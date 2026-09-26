package q7;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.MalformedInputException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import r7.m;
import s7.g;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    private static final int DECODE_CHAR_BUFFER_SIZE = 8192;

    @NotNull
    private static final ByteBuffer EmptyByteBuffer;
    private static final CharBuffer EmptyCharBuffer = CharBuffer.allocate(0);

    static {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(0);
        t.g(byteBufferAllocate);
        EmptyByteBuffer = byteBufferAllocate;
    }

    public static final int a(@NotNull CharsetDecoder charsetDecoder, @NotNull m input, @NotNull Appendable dst, int i10) {
        CoderResult cr;
        s7.a aVarC;
        t.j(charsetDecoder, "<this>");
        t.j(input, "input");
        t.j(dst, "dst");
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        boolean z6 = true;
        s7.a aVarB = g.b(input, 1);
        int iRemaining = 0;
        if (aVarB != null) {
            int i11 = 1;
            int i12 = 1;
            int iRemaining2 = 0;
            while (true) {
                try {
                    int iJ = aVarB.j() - aVarB.h();
                    if (iJ >= i11) {
                        int i13 = i10 - iRemaining2;
                        if (i13 == 0) {
                            i11 = 0;
                        } else {
                            try {
                                ByteBuffer byteBufferG = aVarB.g();
                                int iH = aVarB.h();
                                int iJ2 = aVarB.j() - iH;
                                ByteBuffer byteBufferF = p7.c.f(byteBufferG, iH, iJ2);
                                charBufferAllocate.clear();
                                if (i13 < 8192) {
                                    charBufferAllocate.limit(i13);
                                }
                                CoderResult rc = charsetDecoder.decode(byteBufferF, charBufferAllocate, false);
                                charBufferAllocate.flip();
                                iRemaining2 += charBufferAllocate.remaining();
                                dst.append(charBufferAllocate);
                                if (rc.isMalformed() || rc.isUnmappable()) {
                                    t.i(rc, "rc");
                                    j(rc);
                                }
                                i12 = (rc.isUnderflow() && byteBufferF.hasRemaining()) ? i12 + 1 : 1;
                                if (byteBufferF.limit() != iJ2) {
                                    throw new IllegalStateException("Buffer's limit change is not allowed".toString());
                                }
                                aVarB.c(byteBufferF.position());
                                i11 = i12;
                            } catch (Throwable th) {
                                aVarB.j();
                                aVarB.h();
                                throw th;
                            }
                        }
                        iJ = aVarB.j() - aVarB.h();
                    }
                    if (iJ == 0) {
                        try {
                            aVarC = g.c(input, aVarB);
                        } catch (Throwable th2) {
                            th = th2;
                            z6 = false;
                            if (z6) {
                                g.a(input, aVarB);
                            }
                            throw th;
                        }
                    } else if (iJ < i11 || aVarB.e() - aVarB.f() < 8) {
                        g.a(input, aVarB);
                        aVarC = g.b(input, i11);
                    } else {
                        aVarC = aVarB;
                    }
                    if (aVarC == null) {
                        break;
                    }
                    if (i11 <= 0) {
                        iRemaining = 1;
                        aVarB = aVarC;
                        break;
                    }
                    aVarB = aVarC;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (iRemaining != 0) {
                g.a(input, aVarB);
            }
            iRemaining = iRemaining2;
        }
        do {
            charBufferAllocate.clear();
            int i14 = i10 - iRemaining;
            if (i14 == 0) {
                break;
            }
            if (i14 < 8192) {
                charBufferAllocate.limit(i14);
            }
            cr = charsetDecoder.decode(EmptyByteBuffer, charBufferAllocate, true);
            charBufferAllocate.flip();
            iRemaining += charBufferAllocate.remaining();
            dst.append(charBufferAllocate);
            if (cr.isUnmappable() || cr.isMalformed()) {
                t.i(cr, "cr");
                j(cr);
            }
        } while (cr.isOverflow());
        return iRemaining;
    }

    @NotNull
    public static final String b(@NotNull CharsetDecoder charsetDecoder, @NotNull m input, int i10) throws EOFException {
        t.j(charsetDecoder, "<this>");
        t.j(input, "input");
        if (i10 == 0) {
            return "";
        }
        if (input.t0() - input.E0() < i10) {
            return d(charsetDecoder, input, i10);
        }
        if (!input.y0().hasArray()) {
            return c(charsetDecoder, input, i10);
        }
        ByteBuffer byteBufferY0 = input.y0();
        byte[] bArrArray = byteBufferY0.array();
        t.i(bArrArray, "bb.array()");
        int iArrayOffset = byteBufferY0.arrayOffset() + byteBufferY0.position() + input.k0().h();
        Charset charset = charsetDecoder.charset();
        t.i(charset, "charset()");
        String str = new String(bArrArray, iArrayOffset, i10, charset);
        input.n(i10);
        return str;
    }

    private static final String d(CharsetDecoder charsetDecoder, m mVar, int i10) throws Throwable {
        int iPosition;
        s7.a aVarC;
        CharBuffer charBufferAllocate = CharBuffer.allocate(i10);
        boolean z6 = true;
        s7.a aVarB = g.b(mVar, 1);
        boolean z10 = false;
        if (aVarB == null) {
            iPosition = i10;
        } else {
            iPosition = i10;
            int i11 = 1;
            int i12 = 1;
            boolean z11 = false;
            while (true) {
                try {
                    int iJ = aVarB.j() - aVarB.h();
                    if (iJ >= i11) {
                        try {
                            if (!charBufferAllocate.hasRemaining() || iPosition == 0) {
                                i11 = 0;
                            } else {
                                ByteBuffer byteBufferG = aVarB.g();
                                int iH = aVarB.h();
                                int iJ2 = aVarB.j() - iH;
                                ByteBuffer byteBufferF = p7.c.f(byteBufferG, iH, iJ2);
                                int iLimit = byteBufferF.limit();
                                int iPosition2 = byteBufferF.position();
                                boolean z12 = iLimit - iPosition2 >= iPosition;
                                if (z12) {
                                    byteBufferF.limit(iPosition2 + iPosition);
                                }
                                CoderResult rc = charsetDecoder.decode(byteBufferF, charBufferAllocate, z12);
                                if (rc.isMalformed() || rc.isUnmappable()) {
                                    t.i(rc, "rc");
                                    j(rc);
                                }
                                i12 = (rc.isUnderflow() && byteBufferF.hasRemaining()) ? i12 + 1 : 1;
                                byteBufferF.limit(iLimit);
                                iPosition -= byteBufferF.position() - iPosition2;
                                if (byteBufferF.limit() != iJ2) {
                                    throw new IllegalStateException("Buffer's limit change is not allowed".toString());
                                }
                                aVarB.c(byteBufferF.position());
                                i11 = i12;
                                z11 = z12;
                            }
                            iJ = aVarB.j() - aVarB.h();
                        } catch (Throwable th) {
                            aVarB.j();
                            aVarB.h();
                            throw th;
                        }
                    }
                    if (iJ == 0) {
                        try {
                            aVarC = g.c(mVar, aVarB);
                        } catch (Throwable th2) {
                            th = th2;
                            z6 = false;
                            if (z6) {
                                g.a(mVar, aVarB);
                            }
                            throw th;
                        }
                    } else if (iJ < i11 || aVarB.e() - aVarB.f() < 8) {
                        g.a(mVar, aVarB);
                        aVarC = g.b(mVar, i11);
                    } else {
                        aVarC = aVarB;
                    }
                    if (aVarC == null) {
                        break;
                    }
                    if (i11 <= 0) {
                        z10 = true;
                        aVarB = aVarC;
                        break;
                    }
                    aVarB = aVarC;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (z10) {
                g.a(mVar, aVarB);
            }
            z10 = z11;
        }
        if (charBufferAllocate.hasRemaining() && !z10) {
            CoderResult rc2 = charsetDecoder.decode(EmptyByteBuffer, charBufferAllocate, true);
            if (rc2.isMalformed() || rc2.isUnmappable()) {
                t.i(rc2, "rc");
                j(rc2);
            }
        }
        if (iPosition <= 0) {
            if (iPosition < 0) {
                throw new AssertionError("remainingInputBytes < 0");
            }
            charBufferAllocate.flip();
            String string = charBufferAllocate.toString();
            t.i(string, "cb.toString()");
            return string;
        }
        throw new EOFException("Not enough bytes available: had only " + (i10 - iPosition) + " instead of " + i10);
    }

    public static final boolean e(@NotNull CharsetEncoder charsetEncoder, @NotNull r7.a dst) throws CharacterCodingException {
        t.j(charsetEncoder, "<this>");
        t.j(dst, "dst");
        ByteBuffer byteBufferG = dst.g();
        int iJ = dst.j();
        int iF = dst.f() - iJ;
        ByteBuffer byteBufferF = p7.c.f(byteBufferG, iJ, iF);
        CoderResult result = charsetEncoder.encode(EmptyCharBuffer, byteBufferF, true);
        if (result.isMalformed() || result.isUnmappable()) {
            t.i(result, "result");
            j(result);
        }
        boolean zIsUnderflow = result.isUnderflow();
        if (byteBufferF.limit() != iF) {
            throw new IllegalStateException("Buffer's limit change is not allowed".toString());
        }
        dst.a(byteBufferF.position());
        return zIsUnderflow;
    }

    public static final int f(@NotNull CharsetEncoder charsetEncoder, @NotNull CharSequence input, int i10, int i11, @NotNull r7.a dst) throws CharacterCodingException {
        t.j(charsetEncoder, "<this>");
        t.j(input, "input");
        t.j(dst, "dst");
        CharBuffer charBufferWrap = CharBuffer.wrap(input, i10, i11);
        int iRemaining = charBufferWrap.remaining();
        ByteBuffer byteBufferG = dst.g();
        int iJ = dst.j();
        int iF = dst.f() - iJ;
        ByteBuffer byteBufferF = p7.c.f(byteBufferG, iJ, iF);
        CoderResult result = charsetEncoder.encode(charBufferWrap, byteBufferF, false);
        if (result.isMalformed() || result.isUnmappable()) {
            t.i(result, "result");
            j(result);
        }
        if (byteBufferF.limit() != iF) {
            throw new IllegalStateException("Buffer's limit change is not allowed".toString());
        }
        dst.a(byteBufferF.position());
        return iRemaining - charBufferWrap.remaining();
    }

    @NotNull
    public static final byte[] g(@NotNull CharsetEncoder charsetEncoder, @NotNull CharSequence input, int i10, int i11) {
        t.j(charsetEncoder, "<this>");
        t.j(input, "input");
        if (!(input instanceof String)) {
            return h(charsetEncoder, input, i10, i11);
        }
        if (i10 == 0 && i11 == input.length()) {
            byte[] bytes = ((String) input).getBytes(charsetEncoder.charset());
            t.i(bytes, "input as java.lang.String).getBytes(charset())");
            return bytes;
        }
        String strSubstring = ((String) input).substring(i10, i11);
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        t.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes2 = strSubstring.getBytes(charsetEncoder.charset());
        t.i(bytes2, "input.substring(fromInde…ring).getBytes(charset())");
        return bytes2;
    }

    @NotNull
    public static final String i(@NotNull Charset charset) {
        t.j(charset, "<this>");
        String strName = charset.name();
        t.i(strName, "name()");
        return strName;
    }

    private static final String c(CharsetDecoder charsetDecoder, m mVar, int i10) throws CharacterCodingException, EOFException {
        CharBuffer charBufferAllocate = CharBuffer.allocate(i10);
        ByteBuffer byteBufferF = p7.c.f(mVar.y0(), mVar.k0().h(), i10);
        CoderResult rc = charsetDecoder.decode(byteBufferF, charBufferAllocate, true);
        if (rc.isMalformed() || rc.isUnmappable()) {
            t.i(rc, "rc");
            j(rc);
        }
        charBufferAllocate.flip();
        mVar.n(byteBufferF.position());
        String string = charBufferAllocate.toString();
        t.i(string, "cb.toString()");
        return string;
    }

    private static final byte[] h(CharsetEncoder charsetEncoder, CharSequence charSequence, int i10, int i11) throws CharacterCodingException {
        ByteBuffer byteBufferEncode = charsetEncoder.encode(CharBuffer.wrap(charSequence, i10, i11));
        byte[] bArr = null;
        if (byteBufferEncode.hasArray() && byteBufferEncode.arrayOffset() == 0) {
            byte[] bArrArray = byteBufferEncode.array();
            if (bArrArray.length == byteBufferEncode.remaining()) {
                bArr = bArrArray;
            }
        }
        if (bArr == null) {
            byte[] bArr2 = new byte[byteBufferEncode.remaining()];
            byteBufferEncode.get(bArr2);
            return bArr2;
        }
        return bArr;
    }

    private static final void j(CoderResult coderResult) throws CharacterCodingException {
        try {
            coderResult.throwException();
        } catch (MalformedInputException e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Failed to decode bytes";
            }
            throw new c(message);
        }
    }
}
