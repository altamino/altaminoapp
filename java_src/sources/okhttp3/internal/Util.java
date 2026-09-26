package okhttp3.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import e8.l;
import j8.i;
import j8.o;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.collections.d0;
import kotlin.collections.m0;
import kotlin.collections.p;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.c;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import kotlin.jvm.internal.v0;
import kotlin.text.d;
import kotlin.text.g;
import kotlin.text.u;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.f;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class Util {

    @NotNull
    public static final byte[] EMPTY_BYTE_ARRAY;

    @NotNull
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);

    @NotNull
    public static final RequestBody EMPTY_REQUEST;

    @NotNull
    public static final ResponseBody EMPTY_RESPONSE;

    @NotNull
    private static final Options UNICODE_BOMS;

    @NotNull
    public static final TimeZone UTC;

    @NotNull
    private static final g VERIFY_AS_IP_ADDRESS;
    public static final boolean assertionsEnabled;

    @NotNull
    public static final String okHttpName;

    @NotNull
    public static final String userAgent = "okhttp/4.10.0";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        UNICODE_BOMS = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        t.g(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new g("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String name = OkHttpClient.class.getName();
        t.i(name, "OkHttpClient::class.java.name");
        okHttpName = u.u0(u.t0(name, "okhttp3."), "Client");
    }

    public static final int and(byte b7, int i10) {
        return b7 & i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: asFactory$lambda-8, reason: not valid java name */
    public static final EventListener m1777asFactory$lambda8(EventListener this_asFactory, Call it) {
        t.j(this_asFactory, "$this_asFactory");
        t.j(it, "it");
        return this_asFactory;
    }

    public static final void closeQuietly(@NotNull Closeable closeable) {
        t.j(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final int delimiterOffset(@NotNull String str, @NotNull String delimiters, int i10, int i11) {
        t.j(str, "<this>");
        t.j(delimiters, "delimiters");
        while (i10 < i11) {
            int i12 = i10 + 1;
            if (u.O(delimiters, str.charAt(i10), false, 2, null)) {
                return i10;
            }
            i10 = i12;
        }
        return i11;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return delimiterOffset(str, str2, i10, i11);
    }

    public static final int parseHexDigit(char c7) {
        if ('0' <= c7 && c7 < ':') {
            return c7 - '0';
        }
        if ('a' <= c7 && c7 < 'g') {
            return c7 - 'W';
        }
        if ('A' > c7 || c7 >= 'G') {
            return -1;
        }
        return c7 - '7';
    }

    public static final boolean skipAll(@NotNull Source source, int i10, @NotNull TimeUnit timeUnit) throws IOException {
        t.j(source, "<this>");
        t.j(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i10)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
    }

    @NotNull
    public static final String toHexString(long j6) {
        String hexString = Long.toHexString(j6);
        t.i(hexString, "toHexString(this)");
        return hexString;
    }

    public static final <E> void addIfAbsent(@NotNull List<E> list, E e) {
        t.j(list, "<this>");
        if (list.contains(e)) {
            return;
        }
        list.add(e);
    }

    public static final int and(short s, int i10) {
        return s & i10;
    }

    @NotNull
    public static final EventListener.Factory asFactory(@NotNull final EventListener eventListener) {
        t.j(eventListener, "<this>");
        return new EventListener.Factory() { // from class: okhttp3.internal.b
            @Override // okhttp3.EventListener.Factory
            public final EventListener create(Call call) {
                return Util.m1777asFactory$lambda8(eventListener, call);
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(@NotNull Object obj) {
        t.j(obj, "<this>");
        if (assertionsEnabled && Thread.holdsLock(obj)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + obj);
        }
    }

    public static final void assertThreadHoldsLock(@NotNull Object obj) {
        t.j(obj, "<this>");
        if (!assertionsEnabled || Thread.holdsLock(obj)) {
            return;
        }
        throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + obj);
    }

    public static final boolean canParseAsIpAddress(@NotNull String str) {
        t.j(str, "<this>");
        return VERIFY_AS_IP_ADDRESS.b(str);
    }

    public static final boolean canReuseConnectionFor(@NotNull HttpUrl httpUrl, @NotNull HttpUrl other) {
        t.j(httpUrl, "<this>");
        t.j(other, "other");
        return t.e(httpUrl.host(), other.host()) && httpUrl.port() == other.port() && t.e(httpUrl.scheme(), other.scheme());
    }

    public static final int checkDuration(@NotNull String name, long j6, @Nullable TimeUnit timeUnit) {
        t.j(name, "name");
        if (j6 < 0) {
            throw new IllegalStateException(t.s(name, " < 0").toString());
        }
        if (timeUnit == null) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(j6);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(t.s(name, " too large.").toString());
        }
        if (millis != 0 || j6 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(t.s(name, " too small.").toString());
    }

    public static final void checkOffsetAndCount(long j6, long j10, long j11) {
        if ((j10 | j11) < 0 || j10 > j6 || j6 - j10 < j11) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    @NotNull
    public static final String[] concat(@NotNull String[] strArr, @NotNull String value) {
        t.j(strArr, "<this>");
        t.j(value, "value");
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length + 1);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) objArrCopyOf;
        strArr2[p.R(strArr2)] = value;
        return strArr2;
    }

    public static final int delimiterOffset(@NotNull String str, char c7, int i10, int i11) {
        t.j(str, "<this>");
        while (i10 < i11) {
            int i12 = i10 + 1;
            if (str.charAt(i10) == c7) {
                return i10;
            }
            i10 = i12;
        }
        return i11;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c7, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return delimiterOffset(str, c7, i10, i11);
    }

    public static final boolean discard(@NotNull Source source, int i10, @NotNull TimeUnit timeUnit) {
        t.j(source, "<this>");
        t.j(timeUnit, "timeUnit");
        try {
            return skipAll(source, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    @NotNull
    public static final <T> List<T> filterList(@NotNull Iterable<? extends T> iterable, @NotNull l<? super T, Boolean> predicate) {
        t.j(iterable, "<this>");
        t.j(predicate, "predicate");
        List<T> listM = v.m();
        for (T t5 : iterable) {
            if (predicate.invoke(t5).booleanValue()) {
                if (listM.isEmpty()) {
                    listM = new ArrayList<>();
                }
                v0.c(listM).add(t5);
            }
        }
        return listM;
    }

    @NotNull
    public static final String format(@NotNull String format, @NotNull Object... args) {
        t.j(format, "format");
        t.j(args, "args");
        u0 u0Var = u0.INSTANCE;
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        String str = String.format(locale, format, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        t.i(str, "format(locale, format, *args)");
        return str;
    }

    public static final boolean hasIntersection(@NotNull String[] strArr, @Nullable String[] strArr2, @NotNull Comparator<? super String> comparator) {
        t.j(strArr, "<this>");
        t.j(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            int length = strArr.length;
            int i10 = 0;
            while (i10 < length) {
                String str = strArr[i10];
                i10++;
                Iterator itA = c.a(strArr2);
                while (itA.hasNext()) {
                    if (comparator.compare(str, (String) itA.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long headersContentLength(@NotNull Response response) {
        t.j(response, "<this>");
        String str = response.headers().get("Content-Length");
        if (str == null) {
            return -1L;
        }
        return toLongOrDefault(str, -1L);
    }

    public static final void ignoreIoExceptions(@NotNull e8.a<l0> block) {
        t.j(block, "block");
        try {
            block.invoke();
        } catch (IOException unused) {
        }
    }

    @SafeVarargs
    @NotNull
    public static final <T> List<T> immutableListOf(@NotNull T... elements) {
        t.j(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(v.p(Arrays.copyOf(objArr, objArr.length)));
        t.i(listUnmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int indexOf(@NotNull String[] strArr, @NotNull String value, @NotNull Comparator<String> comparator) {
        t.j(strArr, "<this>");
        t.j(value, "value");
        t.j(comparator, "comparator");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], value) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(@NotNull String str) {
        t.j(str, "<this>");
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            char cCharAt = str.charAt(i10);
            if (t.l(cCharAt, 31) <= 0 || t.l(cCharAt, 127) >= 0) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(@NotNull String str, int i10, int i11) {
        t.j(str, "<this>");
        while (i10 < i11) {
            int i12 = i10 + 1;
            char cCharAt = str.charAt(i10);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i10;
            }
            i10 = i12;
        }
        return i11;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i10, i11);
    }

    public static final int indexOfLastNonAsciiWhitespace(@NotNull String str, int i10, int i11) {
        t.j(str, "<this>");
        int i12 = i11 - 1;
        if (i10 <= i12) {
            while (true) {
                int i13 = i12 - 1;
                char cCharAt = str.charAt(i12);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i12 + 1;
                }
                if (i12 != i10) {
                    i12 = i13;
                }
            }
        }
        return i10;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i10, i11);
    }

    public static final int indexOfNonWhitespace(@NotNull String str, int i10) {
        t.j(str, "<this>");
        int length = str.length();
        while (i10 < length) {
            int i11 = i10 + 1;
            char cCharAt = str.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i10;
            }
            i10 = i11;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return indexOfNonWhitespace(str, i10);
    }

    @NotNull
    public static final String[] intersect(@NotNull String[] strArr, @NotNull String[] other, @NotNull Comparator<? super String> comparator) {
        t.j(strArr, "<this>");
        t.j(other, "other");
        t.j(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        int i10 = 0;
        while (i10 < length) {
            String str = strArr[i10];
            i10++;
            int length2 = other.length;
            int i11 = 0;
            while (i11 < length2) {
                String str2 = other[i11];
                i11++;
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    public static final boolean isCivilized(@NotNull FileSystem fileSystem, @NotNull File file) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(file, "file");
        Sink sink = fileSystem.sink(file);
        try {
            try {
                fileSystem.delete(file);
                kotlin.io.c.a(sink, null);
                return true;
            } catch (IOException unused) {
                l0 l0Var = l0.INSTANCE;
                kotlin.io.c.a(sink, null);
                fileSystem.delete(file);
                return false;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                kotlin.io.c.a(sink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(@NotNull Socket socket, @NotNull BufferedSource source) {
        t.j(socket, "<this>");
        t.j(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !source.exhausted();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean isSensitiveHeader(@NotNull String name) {
        t.j(name, "name");
        return kotlin.text.t.w(name, "Authorization", true) || kotlin.text.t.w(name, "Cookie", true) || kotlin.text.t.w(name, "Proxy-Authorization", true) || kotlin.text.t.w(name, "Set-Cookie", true);
    }

    public static final void notify(@NotNull Object obj) {
        t.j(obj, "<this>");
        obj.notify();
    }

    public static final void notifyAll(@NotNull Object obj) {
        t.j(obj, "<this>");
        obj.notifyAll();
    }

    @NotNull
    public static final String peerName(@NotNull Socket socket) {
        t.j(socket, "<this>");
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        t.i(hostName, "address.hostName");
        return hostName;
    }

    @NotNull
    public static final Charset readBomAsCharset(@NotNull BufferedSource bufferedSource, @NotNull Charset charset) throws IOException {
        t.j(bufferedSource, "<this>");
        t.j(charset, "default");
        int iSelect = bufferedSource.select(UNICODE_BOMS);
        if (iSelect == -1) {
            return charset;
        }
        if (iSelect == 0) {
            Charset UTF_8 = StandardCharsets.UTF_8;
            t.i(UTF_8, "UTF_8");
            return UTF_8;
        }
        if (iSelect == 1) {
            Charset UTF_16BE = StandardCharsets.UTF_16BE;
            t.i(UTF_16BE, "UTF_16BE");
            return UTF_16BE;
        }
        if (iSelect == 2) {
            Charset UTF_16LE = StandardCharsets.UTF_16LE;
            t.i(UTF_16LE, "UTF_16LE");
            return UTF_16LE;
        }
        if (iSelect == 3) {
            return d.INSTANCE.a();
        }
        if (iSelect == 4) {
            return d.INSTANCE.b();
        }
        throw new AssertionError();
    }

    @Nullable
    public static final <T> T readFieldOrNull(@NotNull Object instance, @NotNull Class<T> fieldType, @NotNull String fieldName) throws IllegalAccessException {
        Object fieldOrNull;
        t.j(instance, "instance");
        t.j(fieldType, "fieldType");
        t.j(fieldName, "fieldName");
        Class<?> superclass = instance.getClass();
        while (true) {
            T tCast = null;
            if (t.e(superclass, Object.class)) {
                if (t.e(fieldName, "delegate") || (fieldOrNull = readFieldOrNull(instance, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, fieldType, fieldName);
            }
            try {
                Field declaredField = superclass.getDeclaredField(fieldName);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(instance);
                if (fieldType.isInstance(obj)) {
                    tCast = fieldType.cast(obj);
                }
                return tCast;
            } catch (NoSuchFieldException unused) {
                superclass = superclass.getSuperclass();
                t.i(superclass, "c.superclass");
            }
        }
    }

    public static final int readMedium(@NotNull BufferedSource bufferedSource) throws IOException {
        t.j(bufferedSource, "<this>");
        return and(bufferedSource.readByte(), 255) | (and(bufferedSource.readByte(), 255) << 16) | (and(bufferedSource.readByte(), 255) << 8);
    }

    @NotNull
    public static final ThreadFactory threadFactory(@NotNull final String name, final boolean z6) {
        t.j(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.m1778threadFactory$lambda1(name, z6, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: threadFactory$lambda-1, reason: not valid java name */
    public static final Thread m1778threadFactory$lambda1(String name, boolean z6, Runnable runnable) {
        t.j(name, "$name");
        Thread thread = new Thread(runnable, name);
        thread.setDaemon(z6);
        return thread;
    }

    public static final void threadName(@NotNull String name, @NotNull e8.a<l0> block) {
        t.j(name, "name");
        t.j(block, "block");
        Thread threadCurrentThread = Thread.currentThread();
        String name2 = threadCurrentThread.getName();
        threadCurrentThread.setName(name);
        try {
            block.invoke();
        } finally {
            r.b(1);
            threadCurrentThread.setName(name2);
            r.a(1);
        }
    }

    @NotNull
    public static final List<Header> toHeaderList(@NotNull Headers headers) {
        t.j(headers, "<this>");
        i iVarV = o.v(0, headers.size());
        ArrayList arrayList = new ArrayList(w.x(iVarV, 10));
        Iterator<Integer> it = iVarV.iterator();
        while (it.hasNext()) {
            int iNextInt = ((m0) it).nextInt();
            arrayList.add(new Header(headers.name(iNextInt), headers.value(iNextInt)));
        }
        return arrayList;
    }

    @NotNull
    public static final Headers toHeaders(@NotNull List<Header> list) {
        t.j(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().utf8(), header.component2().utf8());
        }
        return builder.build();
    }

    @NotNull
    public static final String toHexString(int i10) {
        String hexString = Integer.toHexString(i10);
        t.i(hexString, "toHexString(this)");
        return hexString;
    }

    @NotNull
    public static final String toHostHeader(@NotNull HttpUrl httpUrl, boolean z6) {
        String strHost;
        t.j(httpUrl, "<this>");
        if (u.P(httpUrl.host(), ":", false, 2, null)) {
            strHost = kotlinx.serialization.json.internal.b.BEGIN_LIST + httpUrl.host() + kotlinx.serialization.json.internal.b.END_LIST;
        } else {
            strHost = httpUrl.host();
        }
        if (!z6 && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + kotlinx.serialization.json.internal.b.COLON + httpUrl.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return toHostHeader(httpUrl, z6);
    }

    @NotNull
    public static final <T> List<T> toImmutableList(@NotNull List<? extends T> list) {
        t.j(list, "<this>");
        List<T> listUnmodifiableList = Collections.unmodifiableList(d0.W0(list));
        t.i(listUnmodifiableList, "unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    @NotNull
    public static final <K, V> Map<K, V> toImmutableMap(@NotNull Map<K, ? extends V> map) {
        t.j(map, "<this>");
        if (map.isEmpty()) {
            return s0.h();
        }
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        t.i(mapUnmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return mapUnmodifiableMap;
    }

    public static final long toLongOrDefault(@NotNull String str, long j6) {
        t.j(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j6;
        }
    }

    public static final int toNonNegativeInt(@Nullable String str, int i10) {
        Long lValueOf;
        if (str == null) {
            lValueOf = null;
        } else {
            try {
                lValueOf = Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                return i10;
            }
        }
        if (lValueOf == null) {
            return i10;
        }
        long jLongValue = lValueOf.longValue();
        if (jLongValue > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (jLongValue < 0) {
            return 0;
        }
        return (int) jLongValue;
    }

    @NotNull
    public static final String trimSubstring(@NotNull String str, int i10, int i11) {
        t.j(str, "<this>");
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i10, i11);
        String strSubstring = str.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, iIndexOfFirstNonAsciiWhitespace, i11));
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return trimSubstring(str, i10, i11);
    }

    public static final void wait(@NotNull Object obj) throws InterruptedException {
        t.j(obj, "<this>");
        obj.wait();
    }

    @NotNull
    public static final Throwable withSuppressed(@NotNull Exception exc, @NotNull List<? extends Exception> suppressed) {
        t.j(exc, "<this>");
        t.j(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        Iterator<? extends Exception> it = suppressed.iterator();
        while (it.hasNext()) {
            f.a(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(@NotNull BufferedSink bufferedSink, int i10) throws IOException {
        t.j(bufferedSink, "<this>");
        bufferedSink.writeByte((i10 >>> 16) & 255);
        bufferedSink.writeByte((i10 >>> 8) & 255);
        bufferedSink.writeByte(i10 & 255);
    }

    public static final long and(int i10, long j6) {
        return ((long) i10) & j6;
    }

    public static final void closeQuietly(@NotNull Socket socket) {
        t.j(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!t.e(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(@NotNull ServerSocket serverSocket) {
        t.j(serverSocket, "<this>");
        try {
            serverSocket.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final int skipAll(@NotNull Buffer buffer, byte b7) throws EOFException {
        t.j(buffer, "<this>");
        int i10 = 0;
        while (!buffer.exhausted() && buffer.getByte(0L) == b7) {
            i10++;
            buffer.readByte();
        }
        return i10;
    }
}
