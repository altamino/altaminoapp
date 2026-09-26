package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.io.NumberInput;
import java.math.BigDecimal;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
public final class TextBuffer {
    static final int MAX_SEGMENT_LEN = 262144;
    static final int MIN_SEGMENT_LEN = 1000;
    static final char[] NO_CHARS = new char[0];
    private final BufferRecycler _allocator;
    private char[] _currentSegment;
    private int _currentSize;
    private boolean _hasSegments = false;
    private char[] _inputBuffer;
    private int _inputLen;
    private int _inputStart;
    private char[] _resultArray;
    private String _resultString;
    private int _segmentSize;
    private ArrayList<char[]> _segments;

    private void clearSegments() {
        this._hasSegments = false;
        this._segments.clear();
        this._segmentSize = 0;
        this._currentSize = 0;
    }

    public void append(char c7) {
        if (this._inputStart >= 0) {
            unshare(16);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        if (this._currentSize >= cArr.length) {
            expand(1);
            cArr = this._currentSegment;
        }
        int i10 = this._currentSize;
        this._currentSize = i10 + 1;
        cArr[i10] = c7;
    }

    public char[] emptyAndGetCurrentSegment() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        char[] cArr = this._currentSegment;
        if (cArr != null) {
            return cArr;
        }
        char[] cArrBuf = buf(0);
        this._currentSegment = cArrBuf;
        return cArrBuf;
    }

    public char[] expandCurrentSegment() {
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i10 = (length >> 1) + length;
        if (i10 > 262144) {
            i10 = (length >> 2) + length;
        }
        char[] cArrCopyOf = ArraysCompat.copyOf(cArr, i10);
        this._currentSegment = cArrCopyOf;
        return cArrCopyOf;
    }

    public int getCurrentSegmentSize() {
        return this._currentSize;
    }

    public int getTextOffset() {
        int i10 = this._inputStart;
        if (i10 >= 0) {
            return i10;
        }
        return 0;
    }

    public boolean hasTextAsCharacters() {
        return this._inputStart >= 0 || this._resultArray != null || this._resultString == null;
    }

    public void resetWithCopy(char[] cArr, int i10, int i11) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i11);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(cArr, i10, i11);
    }

    public void resetWithEmpty() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithShared(char[] cArr, int i10, int i11) {
        this._resultString = null;
        this._resultArray = null;
        this._inputBuffer = cArr;
        this._inputStart = i10;
        this._inputLen = i11;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public void resetWithString(String str) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = str;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        this._currentSize = 0;
    }

    public void setCurrentLength(int i10) {
        this._currentSize = i10;
    }

    private char[] buf(int i10) {
        BufferRecycler bufferRecycler = this._allocator;
        return bufferRecycler != null ? bufferRecycler.allocCharBuffer(BufferRecycler.CharBufferType.TEXT_BUFFER, i10) : new char[Math.max(i10, 1000)];
    }

    private char[] carr(int i10) {
        return new char[i10];
    }

    private void expand(int i10) {
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        char[] cArr = this._currentSegment;
        this._hasSegments = true;
        this._segments.add(cArr);
        this._segmentSize += cArr.length;
        int length = cArr.length;
        int i11 = length >> 1;
        if (i11 >= i10) {
            i10 = i11;
        }
        this._currentSize = 0;
        this._currentSegment = carr(Math.min(262144, length + i10));
    }

    private char[] resultArray() {
        int i10;
        String str = this._resultString;
        if (str != null) {
            return str.toCharArray();
        }
        int i11 = this._inputStart;
        if (i11 >= 0) {
            int i12 = this._inputLen;
            if (i12 < 1) {
                return NO_CHARS;
            }
            return i11 == 0 ? ArraysCompat.copyOf(this._inputBuffer, i12) : ArraysCompat.copyOfRange(this._inputBuffer, i11, i12 + i11);
        }
        int size = size();
        if (size < 1) {
            return NO_CHARS;
        }
        char[] carr = carr(size);
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size2 = arrayList.size();
            i10 = 0;
            for (int i13 = 0; i13 < size2; i13++) {
                char[] cArr = this._segments.get(i13);
                int length = cArr.length;
                System.arraycopy(cArr, 0, carr, i10, length);
                i10 += length;
            }
        } else {
            i10 = 0;
        }
        System.arraycopy(this._currentSegment, 0, carr, i10, this._currentSize);
        return carr;
    }

    private void unshare(int i10) {
        int i11 = this._inputLen;
        this._inputLen = 0;
        char[] cArr = this._inputBuffer;
        this._inputBuffer = null;
        int i12 = this._inputStart;
        this._inputStart = -1;
        int i13 = i10 + i11;
        char[] cArr2 = this._currentSegment;
        if (cArr2 == null || i13 > cArr2.length) {
            this._currentSegment = buf(i13);
        }
        if (i11 > 0) {
            System.arraycopy(cArr, i12, this._currentSegment, 0, i11);
        }
        this._segmentSize = 0;
        this._currentSize = i11;
    }

    public char[] contentsAsArray() {
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr;
        }
        char[] cArrResultArray = resultArray();
        this._resultArray = cArrResultArray;
        return cArrResultArray;
    }

    public BigDecimal contentsAsDecimal() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this._resultArray;
        if (cArr3 != null) {
            return NumberInput.parseBigDecimal(cArr3);
        }
        int i10 = this._inputStart;
        if (i10 < 0 || (cArr2 = this._inputBuffer) == null) {
            return (this._segmentSize != 0 || (cArr = this._currentSegment) == null) ? NumberInput.parseBigDecimal(contentsAsArray()) : NumberInput.parseBigDecimal(cArr, 0, this._currentSize);
        }
        return NumberInput.parseBigDecimal(cArr2, i10, this._inputLen);
    }

    public String contentsAsString() {
        if (this._resultString == null) {
            char[] cArr = this._resultArray;
            if (cArr != null) {
                this._resultString = new String(cArr);
            } else {
                int i10 = this._inputStart;
                if (i10 >= 0) {
                    int i11 = this._inputLen;
                    if (i11 < 1) {
                        this._resultString = "";
                        return "";
                    }
                    this._resultString = new String(this._inputBuffer, i10, i11);
                } else {
                    int i12 = this._segmentSize;
                    int i13 = this._currentSize;
                    if (i12 == 0) {
                        this._resultString = i13 != 0 ? new String(this._currentSegment, 0, i13) : "";
                    } else {
                        StringBuilder sb = new StringBuilder(i12 + i13);
                        ArrayList<char[]> arrayList = this._segments;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i14 = 0; i14 < size; i14++) {
                                char[] cArr2 = this._segments.get(i14);
                                sb.append(cArr2, 0, cArr2.length);
                            }
                        }
                        sb.append(this._currentSegment, 0, this._currentSize);
                        this._resultString = sb.toString();
                    }
                }
            }
        }
        return this._resultString;
    }

    public void ensureNotShared() {
        if (this._inputStart >= 0) {
            unshare(16);
        }
    }

    public char[] finishCurrentSegment() {
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        this._hasSegments = true;
        this._segments.add(this._currentSegment);
        int length = this._currentSegment.length;
        this._segmentSize += length;
        char[] carr = carr(Math.min(length + (length >> 1), 262144));
        this._currentSize = 0;
        this._currentSegment = carr;
        return carr;
    }

    public char[] getCurrentSegment() {
        if (this._inputStart >= 0) {
            unshare(1);
        } else {
            char[] cArr = this._currentSegment;
            if (cArr == null) {
                this._currentSegment = buf(0);
            } else if (this._currentSize >= cArr.length) {
                expand(1);
            }
        }
        return this._currentSegment;
    }

    public char[] getTextBuffer() {
        if (this._inputStart >= 0) {
            return this._inputBuffer;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr;
        }
        String str = this._resultString;
        if (str == null) {
            return !this._hasSegments ? this._currentSegment : contentsAsArray();
        }
        char[] charArray = str.toCharArray();
        this._resultArray = charArray;
        return charArray;
    }

    public void releaseBuffers() {
        if (this._allocator == null) {
            resetWithEmpty();
        } else if (this._currentSegment != null) {
            resetWithEmpty();
            char[] cArr = this._currentSegment;
            this._currentSegment = null;
            this._allocator.releaseCharBuffer(BufferRecycler.CharBufferType.TEXT_BUFFER, cArr);
        }
    }

    public int size() {
        if (this._inputStart >= 0) {
            return this._inputLen;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this._resultString;
        return str != null ? str.length() : this._segmentSize + this._currentSize;
    }

    public TextBuffer(BufferRecycler bufferRecycler) {
        this._allocator = bufferRecycler;
    }

    public double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(contentsAsString());
    }

    public char[] expandCurrentSegment(int i10) {
        char[] cArr = this._currentSegment;
        if (cArr.length >= i10) {
            return cArr;
        }
        char[] cArrCopyOf = ArraysCompat.copyOf(cArr, i10);
        this._currentSegment = cArrCopyOf;
        return cArrCopyOf;
    }

    public String toString() {
        return contentsAsString();
    }

    public void append(char[] cArr, int i10, int i11) {
        if (this._inputStart >= 0) {
            unshare(i11);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr2 = this._currentSegment;
        int length = cArr2.length;
        int i12 = this._currentSize;
        int i13 = length - i12;
        if (i13 >= i11) {
            System.arraycopy(cArr, i10, cArr2, i12, i11);
            this._currentSize += i11;
            return;
        }
        if (i13 > 0) {
            System.arraycopy(cArr, i10, cArr2, i12, i13);
            i10 += i13;
            i11 -= i13;
        }
        do {
            expand(i11);
            int iMin = Math.min(this._currentSegment.length, i11);
            System.arraycopy(cArr, i10, this._currentSegment, 0, iMin);
            this._currentSize += iMin;
            i10 += iMin;
            i11 -= iMin;
        } while (i11 > 0);
    }

    public void append(String str, int i10, int i11) {
        if (this._inputStart >= 0) {
            unshare(i11);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i12 = this._currentSize;
        int i13 = length - i12;
        if (i13 >= i11) {
            str.getChars(i10, i10 + i11, cArr, i12);
            this._currentSize += i11;
            return;
        }
        if (i13 > 0) {
            int i14 = i10 + i13;
            str.getChars(i10, i14, cArr, i12);
            i11 -= i13;
            i10 = i14;
        }
        while (true) {
            expand(i11);
            int iMin = Math.min(this._currentSegment.length, i11);
            int i15 = i10 + iMin;
            str.getChars(i10, i15, this._currentSegment, 0);
            this._currentSize += iMin;
            i11 -= iMin;
            if (i11 <= 0) {
                return;
            } else {
                i10 = i15;
            }
        }
    }
}
