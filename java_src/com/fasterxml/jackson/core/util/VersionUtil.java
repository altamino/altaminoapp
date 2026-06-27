package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.google.android.exoplayer2.C;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class VersionUtil {
    private static final Pattern VERSION_SEPARATOR = Pattern.compile("[-_./;:]");
    private final Version _version;

    protected VersionUtil() {
        Version versionVersionFor;
        try {
            versionVersionFor = versionFor(getClass());
        } catch (Exception unused) {
            System.err.println("ERROR: Failed to load Version information from " + VersionUtil.class);
            versionVersionFor = null;
        }
        this._version = versionVersionFor == null ? Version.unknownVersion() : versionVersionFor;
    }

    public static Version versionFor(Class<?> cls) throws ClassNotFoundException, IOException {
        Version versionPackageVersionFor = packageVersionFor(cls);
        if (versionPackageVersionFor != null) {
            return versionPackageVersionFor;
        }
        InputStream resourceAsStream = cls.getResourceAsStream("VERSION.txt");
        try {
            if (resourceAsStream == null) {
                return Version.unknownVersion();
            }
            return doReadVersion(new InputStreamReader(resourceAsStream, C.UTF8_NAME));
        } catch (UnsupportedEncodingException unused) {
            return Version.unknownVersion();
        } finally {
            _close(resourceAsStream);
        }
    }

    public static Version packageVersionFor(Class<?> cls) throws ClassNotFoundException {
        try {
            Class<?> cls2 = Class.forName(cls.getPackage().getName() + ".PackageVersion", true, cls.getClassLoader());
            try {
                return ((Versioned) cls2.newInstance()).version();
            } catch (Exception unused) {
                throw new IllegalArgumentException("Failed to get Versioned out of " + cls2);
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    private static Version doReadVersion(Reader reader) throws IOException {
        String line;
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(reader);
        String strTrim2 = null;
        try {
            try {
                line = bufferedReader.readLine();
                if (line != null) {
                    try {
                        strTrim = bufferedReader.readLine();
                        if (strTrim != null) {
                            try {
                                strTrim2 = bufferedReader.readLine();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (IOException unused2) {
                    }
                } else {
                    strTrim = null;
                }
            } finally {
                _close(bufferedReader);
            }
        } catch (IOException unused3) {
            line = null;
            strTrim = null;
        }
        if (strTrim != null) {
            strTrim = strTrim.trim();
        }
        if (strTrim2 != null) {
            strTrim2 = strTrim2.trim();
        }
        return parseVersion(line, strTrim, strTrim2);
    }

    public static Version parseVersion(String str, String str2, String str3) {
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.length() > 0) {
                String[] strArrSplit = VERSION_SEPARATOR.split(strTrim);
                return new Version(parseVersionPart(strArrSplit[0]), strArrSplit.length > 1 ? parseVersionPart(strArrSplit[1]) : 0, strArrSplit.length > 2 ? parseVersionPart(strArrSplit[2]) : 0, strArrSplit.length > 3 ? strArrSplit[3] : null, str2, str3);
            }
        }
        return null;
    }

    protected static int parseVersionPart(String str) {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt > '9' || cCharAt < '0') {
                break;
            }
            i = (i * 10) + (cCharAt - '0');
        }
        return i;
    }

    private static final void _close(Closeable closeable) throws IOException {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static final void throwInternal() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }
}
