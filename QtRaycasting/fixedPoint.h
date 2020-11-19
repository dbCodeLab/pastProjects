#pragma once
#include <cstdint>

template <int p>
class FixedPoint {
public:
	FixedPoint() {}
	FixedPoint(float f)	{
		value = f * static_cast<float>(1 << p);
	}
	FixedPoint(double d) {
		value = d * static_cast<double>(1 << p);
	}
	FixedPoint(int i) {
		value = i << p;
	}
	FixedPoint(const FixedPoint &rhs) : value(rhs.value) {}
	FixedPoint& operator=(FixedPoint rhs) { value = rhs.value; return *this; }
	FixedPoint& setValue(int32_t v) { value = v; return *this; }
	int32_t getValue() { return value; }
	FixedPoint& operator+=(FixedPoint rhs) { value += rhs.value; return *this; }
	FixedPoint& operator-=(FixedPoint rhs) { value -= rhs.value; return *this; }
	int getInt() {
		return value >> p;
	}
	float getFloat() {
		return value / static_cast<float>(1 << p);
	}
	double getDouble() {
		return value / static_cast<double>(1 << p);
	}


private:
	int32_t value;
};

template <int p>
inline FixedPoint<p> operator +(FixedPoint<p> a, FixedPoint<p> b)
{
	FixedPoint<p> r;
	r.setValue(a.getValue() + b.getValue());
	return r;
}

template <int p>
inline FixedPoint<p> operator -(FixedPoint<p> a, FixedPoint<p> b)
{
	FixedPoint<p> r;
	r.setValue(a.getValue() - b.getValue());
	return r;
}


// Perform a fixed point multiplication using a 64-bit intermediate result to
// prevent overflow problems.
template <int p>
inline FixedPoint<p> operator *(FixedPoint<p> a, FixedPoint<p> b)
{
	FixedPoint<p> r;
	r.setValue((int32_t)(((int64_t)(a.getValue()) * b.getValue()) >> p));
	return r;
}

// Fixed point division
template <int p>
inline FixedPoint<p> operator /(FixedPoint<p> a, FixedPoint<p> b)
{
	FixedPoint<p> r;
#if 0
	r.setValue((int32_t)((((int64_t)a.getValue()) << p) / b.getValue()));
#else	
	union {
		int64_t a;
		struct {
			int32_t l;
			int32_t h;
		};
	} x;

	int32_t value = a.getValue();
	x.l = value << p;
	x.h = value >> (sizeof(int32_t) * 8 - p);
	r.setValue((int32_t)(x.a / b.getValue()));
#endif
	return r;
}

