package com.google.android.gms.common.server.response;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.firebase.remoteconfig.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import kotlinx.serialization.json.internal.b;
import okio.internal._BufferKt;

/* JADX INFO: loaded from: classes8.dex */
@ShowFirstParty
@KeepForSdk
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaa = {b.UNICODE_ESC, 'l', 'l'};
    private static final char[] zab = {'r', b.UNICODE_ESC, 'e'};
    private static final char[] zac = {'r', b.UNICODE_ESC, 'e', b.STRING};
    private static final char[] zad = {'a', 'l', 's', 'e'};
    private static final char[] zae = {'a', 'l', 's', 'e', b.STRING};
    private static final char[] zaf = {'\n'};
    private static final zai zag = new zaa();
    private static final zai zah = new zab();
    private static final zai zai = new zac();
    private static final zai zaj = new zad();
    private static final zai zak = new zae();
    private static final zai zal = new zaf();
    private static final zai zam = new zag();
    private static final zai zan = new zah();
    private final char[] zao = new char[1];
    private final char[] zap = new char[32];
    private final char[] zaq = new char[1024];
    private final StringBuilder zar = new StringBuilder(32);
    private final StringBuilder zas = new StringBuilder(1024);
    private final Stack zat = new Stack();

    @ShowFirstParty
    @KeepForSdk
    public static class ParseException extends Exception {
        public ParseException(@NonNull String str) {
            super(str);
        }

        public ParseException(@NonNull String str, @NonNull Throwable th) {
            super("Error instantiating inner object", th);
        }

        public ParseException(@NonNull Throwable th) {
            super(th);
        }
    }

    private static final String zaA(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) throws ParseException, IOException {
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z6 = false;
        boolean z10 = false;
        while (true) {
            int i10 = bufferedReader.read(cArr);
            if (i10 == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            int i11 = 0;
            while (i11 < i10) {
                char c7 = cArr[i11];
                if (Character.isISOControl(c7) && (cArr2 == null || cArr2[0] != c7)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                int i12 = i11 + 1;
                if (c7 != '\"') {
                    if (c7 == '\\') {
                        z6 = !z6;
                        z10 = true;
                    }
                    i11 = i12;
                } else if (!z6) {
                    sb.append(cArr, 0, i11);
                    bufferedReader.reset();
                    bufferedReader.skip(i12);
                    return z10 ? JsonUtils.unescapeString(sb.toString()) : sb.toString();
                }
                z6 = false;
                i11 = i12;
            }
            sb.append(cArr, 0, i10);
            bufferedReader.mark(cArr.length);
        }
    }

    private final void zax(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i10 = 0;
        while (true) {
            int length = cArr.length;
            if (i10 >= length) {
                return;
            }
            int i11 = bufferedReader.read(this.zap, 0, length - i10);
            if (i11 == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i12 = 0; i12 < i11; i12++) {
                if (cArr[i12 + i10] != this.zap[i12]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i10 += i11;
        }
    }

    private final char zai(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.zao) != -1) {
            while (Character.isWhitespace(this.zao[0])) {
                if (bufferedReader.read(this.zao) == -1) {
                }
            }
            return this.zao[0];
        }
        return (char) 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        return iZam == 0 ? a.DEFAULT_VALUE_FOR_DOUBLE : Double.parseDouble(new String(this.zaq, 0, iZam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float zak(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zaq, 0, iZam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zal(BufferedReader bufferedReader) throws ParseException, IOException {
        int i10;
        int i11;
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0;
        }
        char[] cArr = this.zaq;
        if (iZam <= 0) {
            throw new ParseException("No number to parse");
        }
        char c7 = cArr[0];
        int i12 = c7 == '-' ? Integer.MIN_VALUE : -2147483647;
        int i13 = c7 == '-' ? 1 : 0;
        if (i13 < iZam) {
            i11 = i13 + 1;
            int iDigit = Character.digit(cArr[i13], 10);
            if (iDigit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i10 = -iDigit;
        } else {
            i10 = 0;
            i11 = i13;
        }
        while (i11 < iZam) {
            int i14 = i11 + 1;
            int iDigit2 = Character.digit(cArr[i11], 10);
            if (iDigit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i10 < -214748364) {
                throw new ParseException("Number too large");
            }
            int i15 = i10 * 10;
            if (i15 < i12 + iDigit2) {
                throw new ParseException("Number too large");
            }
            i10 = i15 - iDigit2;
            i11 = i14;
        }
        if (i13 == 0) {
            return -i10;
        }
        if (i11 > 1) {
            return i10;
        }
        throw new ParseException("No digits to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zan(BufferedReader bufferedReader) throws ParseException, IOException {
        long j6;
        int i10;
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return 0L;
        }
        char[] cArr = this.zaq;
        if (iZam <= 0) {
            throw new ParseException("No number to parse");
        }
        char c7 = cArr[0];
        long j10 = c7 == '-' ? Long.MIN_VALUE : -9223372036854775807L;
        int i11 = c7 == '-' ? 1 : 0;
        if (i11 < iZam) {
            i10 = i11 + 1;
            int iDigit = Character.digit(cArr[i11], 10);
            if (iDigit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            j6 = -iDigit;
        } else {
            j6 = 0;
            i10 = i11;
        }
        while (i10 < iZam) {
            int i12 = i10 + 1;
            int iDigit2 = Character.digit(cArr[i10], 10);
            if (iDigit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (j6 < _BufferKt.OVERFLOW_ZONE) {
                throw new ParseException("Number too large");
            }
            long j11 = j6 * 10;
            int i13 = iZam;
            long j12 = iDigit2;
            if (j11 < j10 + j12) {
                throw new ParseException("Number too large");
            }
            j6 = j11 - j12;
            iZam = i13;
            i10 = i12;
        }
        if (i11 == 0) {
            return -j6;
        }
        if (i10 > 1) {
            return j6;
        }
        throw new ParseException("No digits to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final String zao(BufferedReader bufferedReader) throws ParseException, IOException {
        return zap(bufferedReader, this.zap, this.zar, null);
    }

    @Nullable
    @ResultIgnorabilityUnspecified
    private final String zaq(BufferedReader bufferedReader) throws ParseException, IOException {
        this.zat.push(2);
        char cZai = zai(bufferedReader);
        if (cZai == '\"') {
            this.zat.push(3);
            String strZaA = zaA(bufferedReader, this.zap, this.zar, null);
            zaw(3);
            if (zai(bufferedReader) == ':') {
                return strZaA;
            }
            throw new ParseException("Expected key/value separator");
        }
        if (cZai == ']') {
            zaw(2);
            zaw(1);
            zaw(5);
            return null;
        }
        if (cZai == '}') {
            zaw(2);
            return null;
        }
        throw new ParseException("Unexpected token: " + cZai);
    }

    @Nullable
    private final String zar(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char cZai = zai(bufferedReader);
        int i10 = 1;
        if (cZai != '\"') {
            if (cZai == ',') {
                throw new ParseException("Missing value");
            }
            if (cZai == '[') {
                this.zat.push(5);
                bufferedReader.mark(32);
                if (zai(bufferedReader) == ']') {
                    zaw(5);
                } else {
                    bufferedReader.reset();
                    boolean z6 = false;
                    boolean z10 = false;
                    while (i10 > 0) {
                        char cZai2 = zai(bufferedReader);
                        if (cZai2 == 0) {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                        if (Character.isISOControl(cZai2)) {
                            throw new ParseException("Unexpected control character while reading array");
                        }
                        if (cZai2 == '\"') {
                            if (!z10) {
                                z6 = !z6;
                            }
                            cZai2 = '\"';
                        }
                        if (cZai2 == '[') {
                            if (!z6) {
                                i10++;
                            }
                            cZai2 = '[';
                        }
                        if (cZai2 == ']' && !z6) {
                            i10--;
                        }
                        z10 = (cZai2 == '\\' && z6) ? !z10 : false;
                    }
                    zaw(5);
                }
            } else if (cZai != '{') {
                bufferedReader.reset();
                zam(bufferedReader, this.zaq);
            } else {
                this.zat.push(1);
                bufferedReader.mark(32);
                char cZai3 = zai(bufferedReader);
                if (cZai3 == '}') {
                    zaw(1);
                } else {
                    if (cZai3 != '\"') {
                        throw new ParseException("Unexpected token " + cZai3);
                    }
                    bufferedReader.reset();
                    zaq(bufferedReader);
                    while (zar(bufferedReader) != null) {
                    }
                    zaw(1);
                }
            }
        } else {
            if (bufferedReader.read(this.zao) == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            char c7 = this.zao[0];
            boolean z11 = false;
            while (true) {
                if (c7 == '\"') {
                    if (!z11) {
                        break;
                    }
                    c7 = '\"';
                    z11 = true;
                }
                z11 = c7 == '\\' ? !z11 : false;
                if (bufferedReader.read(this.zao) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                c7 = this.zao[0];
                if (Character.isISOControl(c7)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
            }
        }
        char cZai4 = zai(bufferedReader);
        if (cZai4 == ',') {
            zaw(2);
            return zaq(bufferedReader);
        }
        if (cZai4 == '}') {
            zaw(2);
            return null;
        }
        throw new ParseException("Unexpected token " + cZai4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final BigDecimal zas(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zaq, 0, iZam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final BigInteger zat(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZam = zam(bufferedReader, this.zaq);
        if (iZam == 0) {
            return null;
        }
        return new BigInteger(new String(this.zaq, 0, iZam));
    }

    @Nullable
    private final ArrayList zav(BufferedReader bufferedReader, FastJsonResponse.Field field) throws ParseException, IOException {
        ArrayList arrayList = new ArrayList();
        char cZai = zai(bufferedReader);
        if (cZai == ']') {
            zaw(5);
            return arrayList;
        }
        if (cZai == 'n') {
            zax(bufferedReader, zaa);
            zaw(5);
            return null;
        }
        if (cZai != '{') {
            throw new ParseException("Unexpected token: " + cZai);
        }
        this.zat.push(1);
        while (true) {
            try {
                FastJsonResponse fastJsonResponseZad = field.zad();
                if (!zaz(bufferedReader, fastJsonResponseZad)) {
                    return arrayList;
                }
                arrayList.add(fastJsonResponseZad);
                char cZai2 = zai(bufferedReader);
                if (cZai2 != ',') {
                    if (cZai2 == ']') {
                        zaw(5);
                        return arrayList;
                    }
                    throw new ParseException("Unexpected token: " + cZai2);
                }
                if (zai(bufferedReader) != '{') {
                    throw new ParseException("Expected start of next object in array");
                }
                this.zat.push(1);
            } catch (IllegalAccessException e) {
                throw new ParseException("Error instantiating inner object", e);
            } catch (InstantiationException e2) {
                throw new ParseException("Error instantiating inner object", e2);
            }
        }
    }

    private final void zaw(int i10) throws ParseException {
        if (this.zat.isEmpty()) {
            throw new ParseException("Expected state " + i10 + " but had empty stack");
        }
        int iIntValue = ((Integer) this.zat.pop()).intValue();
        if (iIntValue == i10) {
            return;
        }
        throw new ParseException("Expected state " + i10 + " but had " + iIntValue);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0261  */
    /* JADX WARN: Code duplicated, block: B:131:0x027b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x0264 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x025f A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @ResultIgnorabilityUnspecified
    private final boolean zaz(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        int i10;
        HashMap map;
        char cZai;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String strZaq = zaq(bufferedReader);
        if (strZaq == null) {
            zaw(1);
            return false;
        }
        while (strZaq != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(strZaq);
            if (field == null) {
                strZaq = zar(bufferedReader);
            } else {
                this.zat.push(4);
                int i11 = field.zaa;
                switch (i11) {
                    case 0:
                        if (field.zab) {
                            fastJsonResponse.zav(field, zau(bufferedReader, zag));
                        } else {
                            fastJsonResponse.zau(field, zal(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 1:
                        if (field.zab) {
                            fastJsonResponse.zag(field, zau(bufferedReader, zam));
                        } else {
                            fastJsonResponse.zae(field, zat(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 2:
                        if (field.zab) {
                            fastJsonResponse.zay(field, zau(bufferedReader, zah));
                        } else {
                            fastJsonResponse.zax(field, zan(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 3:
                        if (field.zab) {
                            fastJsonResponse.zas(field, zau(bufferedReader, zai));
                        } else {
                            fastJsonResponse.zaq(field, zak(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 4:
                        if (field.zab) {
                            fastJsonResponse.zao(field, zau(bufferedReader, zaj));
                        } else {
                            fastJsonResponse.zam(field, zaj(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 5:
                        if (field.zab) {
                            fastJsonResponse.zac(field, zau(bufferedReader, zan));
                        } else {
                            fastJsonResponse.zaa(field, zas(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 6:
                        if (field.zab) {
                            fastJsonResponse.zaj(field, zau(bufferedReader, zak));
                        } else {
                            fastJsonResponse.zai(field, zay(bufferedReader, false));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 7:
                        if (field.zab) {
                            fastJsonResponse.zaC(field, zau(bufferedReader, zal));
                        } else {
                            fastJsonResponse.zaA(field, zao(bufferedReader));
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 8:
                        fastJsonResponse.zal(field, Base64Utils.decode(zap(bufferedReader, this.zaq, this.zas, zaf)));
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 9:
                        fastJsonResponse.zal(field, Base64Utils.decodeUrlSafe(zap(bufferedReader, this.zaq, this.zas, zaf)));
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 10:
                        char cZai2 = zai(bufferedReader);
                        if (cZai2 == 'n') {
                            zax(bufferedReader, zaa);
                            map = null;
                        } else {
                            if (cZai2 != '{') {
                                throw new ParseException("Expected start of a map object");
                            }
                            this.zat.push(1);
                            map = new HashMap();
                            while (true) {
                                char cZai3 = zai(bufferedReader);
                                if (cZai3 == 0) {
                                    throw new ParseException("Unexpected EOF");
                                }
                                if (cZai3 == '\"') {
                                    String strZaA = zaA(bufferedReader, this.zap, this.zar, null);
                                    if (zai(bufferedReader) != ':') {
                                        throw new ParseException("No map value found for key ".concat(String.valueOf(strZaA)));
                                    }
                                    if (zai(bufferedReader) != '\"') {
                                        throw new ParseException("Expected String value for key ".concat(String.valueOf(strZaA)));
                                    }
                                    map.put(strZaA, zaA(bufferedReader, this.zap, this.zar, null));
                                    char cZai4 = zai(bufferedReader);
                                    if (cZai4 != ',') {
                                        if (cZai4 != '}') {
                                            throw new ParseException("Unexpected character while parsing string map: " + cZai4);
                                        }
                                        zaw(1);
                                    }
                                } else if (cZai3 == '}') {
                                    zaw(1);
                                }
                                i10 = 4;
                                zaw(i10);
                                zaw(2);
                                cZai = zai(bufferedReader);
                                if (cZai == ',') {
                                    strZaq = zaq(bufferedReader);
                                } else {
                                    if (cZai != '}') {
                                        throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                                    }
                                    strZaq = null;
                                }
                            }
                        }
                        fastJsonResponse.zaB(field, map);
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    case 11:
                        if (!field.zab) {
                            char cZai5 = zai(bufferedReader);
                            if (cZai5 == 'n') {
                                zax(bufferedReader, zaa);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                            } else {
                                this.zat.push(1);
                                if (cZai5 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse fastJsonResponseZad = field.zad();
                                    zaz(bufferedReader, fastJsonResponseZad);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, fastJsonResponseZad);
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            }
                            break;
                        } else {
                            char cZai6 = zai(bufferedReader);
                            if (cZai6 == 'n') {
                                zax(bufferedReader, zaa);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                            } else {
                                this.zat.push(5);
                                if (cZai6 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zav(bufferedReader, field));
                            }
                        }
                        i10 = 4;
                        zaw(i10);
                        zaw(2);
                        cZai = zai(bufferedReader);
                        if (cZai == ',') {
                            strZaq = zaq(bufferedReader);
                        } else {
                            if (cZai != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + cZai);
                            }
                            strZaq = null;
                        }
                        break;
                    default:
                        throw new ParseException("Invalid field type " + i11);
                }
            }
        }
        zaw(1);
        return true;
    }

    @KeepForSdk
    public void parse(@NonNull InputStream inputStream, @NonNull T t5) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zat.push(0);
                char cZai = zai(bufferedReader);
                if (cZai == 0) {
                    throw new ParseException("No data to parse");
                }
                if (cZai == '[') {
                    this.zat.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t5.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t5.addConcreteTypeArrayInternal(value, value.zae, zav(bufferedReader, value));
                } else {
                    if (cZai != '{') {
                        throw new ParseException("Unexpected token: " + cZai);
                    }
                    this.zat.push(1);
                    zaz(bufferedReader, t5);
                }
                zaw(0);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                    Log.w("FastParser", "Failed to close reader while parsing.");
                }
            } catch (IOException e) {
                throw new ParseException(e);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th;
        }
    }

    @ResultIgnorabilityUnspecified
    private final int zam(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i10;
        char cZai = zai(bufferedReader);
        if (cZai != 0) {
            if (cZai != ',') {
                if (cZai == 'n') {
                    zax(bufferedReader, zaa);
                    return 0;
                }
                bufferedReader.mark(1024);
                if (cZai == '\"') {
                    i10 = 0;
                    boolean z6 = false;
                    while (i10 < 1024 && bufferedReader.read(cArr, i10, 1) != -1) {
                        char c7 = cArr[i10];
                        if (!Character.isISOControl(c7)) {
                            int i11 = i10 + 1;
                            if (c7 == '\"') {
                                if (!z6) {
                                    bufferedReader.reset();
                                    bufferedReader.skip(i11);
                                    return i10;
                                }
                            } else {
                                if (c7 == '\\') {
                                    z6 = !z6;
                                }
                                i10 = i11;
                            }
                            z6 = false;
                            i10 = i11;
                        } else {
                            throw new ParseException("Unexpected control character while reading string");
                        }
                    }
                } else {
                    cArr[0] = cZai;
                    i10 = 1;
                    while (i10 < 1024 && bufferedReader.read(cArr, i10, 1) != -1) {
                        char c10 = cArr[i10];
                        if (c10 != '}' && c10 != ',' && !Character.isWhitespace(c10) && cArr[i10] != ']') {
                            i10++;
                        } else {
                            bufferedReader.reset();
                            bufferedReader.skip(i10 - 1);
                            cArr[i10] = 0;
                            return i10;
                        }
                    }
                }
                if (i10 == 1024) {
                    throw new ParseException("Absurdly long value");
                }
                throw new ParseException("Unexpected EOF");
            }
            throw new ParseException("Missing value");
        }
        throw new ParseException("Unexpected EOF");
    }

    @Nullable
    private final String zap(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, @Nullable char[] cArr2) throws ParseException, IOException {
        char cZai = zai(bufferedReader);
        if (cZai != '\"') {
            if (cZai == 'n') {
                zax(bufferedReader, zaa);
                return null;
            }
            throw new ParseException("Expected string");
        }
        return zaA(bufferedReader, cArr, sb, cArr2);
    }

    @Nullable
    private final ArrayList zau(BufferedReader bufferedReader, zai zaiVar) throws ParseException, IOException {
        char cZai = zai(bufferedReader);
        if (cZai == 'n') {
            zax(bufferedReader, zaa);
            return null;
        }
        if (cZai == '[') {
            this.zat.push(5);
            ArrayList arrayList = new ArrayList();
            while (true) {
                bufferedReader.mark(1024);
                char cZai2 = zai(bufferedReader);
                if (cZai2 != 0) {
                    if (cZai2 != ',') {
                        if (cZai2 != ']') {
                            bufferedReader.reset();
                            arrayList.add(zaiVar.zaa(this, bufferedReader));
                        } else {
                            zaw(5);
                            return arrayList;
                        }
                    }
                } else {
                    throw new ParseException("Unexpected EOF");
                }
            }
        } else {
            throw new ParseException("Expected start of array");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zay(BufferedReader bufferedReader, boolean z6) throws ParseException, IOException {
        char[] cArr;
        char[] cArr2;
        char cZai = zai(bufferedReader);
        if (cZai != '\"') {
            if (cZai != 'f') {
                if (cZai != 'n') {
                    if (cZai == 't') {
                        if (z6) {
                            cArr2 = zac;
                        } else {
                            cArr2 = zab;
                        }
                        zax(bufferedReader, cArr2);
                        return true;
                    }
                    throw new ParseException("Unexpected token: " + cZai);
                }
                zax(bufferedReader, zaa);
                return false;
            }
            if (z6) {
                cArr = zae;
            } else {
                cArr = zad;
            }
            zax(bufferedReader, cArr);
            return false;
        }
        if (!z6) {
            return zay(bufferedReader, true);
        }
        throw new ParseException("No boolean value found in string");
    }
}
