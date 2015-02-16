/*
 * utils.h
 *
 *  Created on: 2011-11-23
 *      Author: morin
 */

#ifndef UTILS_H_
#define UTILS_H_

namespace ods {

template<class T> inline
T min(const T& a, const T& b) {
	return ((a)<(b) ? (a) : (b));
}

template<class T> inline
T max(const T& a, const T& b) {
	return ((a)>(b) ? (a) : (b));
}

template<class T> inline
int compare(const T& x, const T& y) {
	if (x < y) return -1;
	if (y < x) return 1;
	return 0;
}

template<class T> inline
bool equals(const T& x, const T& y) {
	return x == y;
}

inline
unsigned intValue(int x) {
	return (unsigned)x;
}

/**
 * This is terrible - don't use it
 */
int hashCode(int x) {
    return x;
}

template<class T> class XFastTrieNode1;


template<class T>
unsigned hashCode(const XFastTrieNode1<T> *u) {
	return u->prefix;
}

} /* namespace ods */


#endif /* UTILS_H_ */
