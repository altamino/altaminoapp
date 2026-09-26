package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.google.firebase.sessions.settings.c;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class VersionUtil {
    private static final Pattern VERSION_SEPARATOR = Pattern.compile("[-_./;:]");
    private final Version _version;

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

    public Version version() {
        return this._version;
    }

    private static Version doReadVersion(Reader reader) {
        String line;
        String line2;
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(reader);
        String strTrim2 = null;
        try {
            try {
                line = bufferedReader.readLine();
                if (line != null) {
                    try {
                        line2 = bufferedReader.readLine();
                        if (line2 != null) {
                            try {
                                strTrim2 = bufferedReader.readLine();
                            } catch (IOException unused) {
                                _close(bufferedReader);
                                String str = line2;
                                strTrim = null;
                                strTrim2 = str;
                            }
                        }
                        strTrim = strTrim2;
                        strTrim2 = line2;
                    } catch (IOException unused2) {
                        line2 = null;
                    }
                } else {
                    strTrim = null;
                }
                _close(bufferedReader);
            } catch (IOException unused3) {
                line = null;
                line2 = null;
            }
            if (strTrim2 != null) {
                strTrim2 = strTrim2.trim();
            }
            if (strTrim != null) {
                strTrim = strTrim.trim();
            }
            return parseVersion(line, strTrim2, strTrim);
        } catch (Throwable th) {
            _close(bufferedReader);
            throw th;
        }
    }

    public static Version mavenVersionFor(ClassLoader classLoader, String str, String str2) {
        InputStream resourceAsStream = classLoader.getResourceAsStream("META-INF/maven/" + str.replaceAll("\\.", c.FORWARD_SLASH_STRING) + c.FORWARD_SLASH_STRING + str2 + "/pom.properties");
        if (resourceAsStream != null) {
            try {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                return parseVersion(properties.getProperty("version"), properties.getProperty("groupId"), properties.getProperty("artifactId"));
            } catch (IOException unused) {
            } finally {
                _close(resourceAsStream);
            }
        }
        return Version.unknownVersion();
    }

    public static Version packageVersionFor(Class<?> cls) {
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

    public static final void throwInternal() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    protected VersionUtil() {
        Version versionVersionFor;
        try {
            versionVersionFor = versionFor(getClass());
        } catch (Exception unused) {
            System.err.println("ERROR: Failed to load Version information from " + getClass());
            versionVersionFor = null;
        }
        this._version = versionVersionFor == null ? Version.unknownVersion() : versionVersionFor;
    }

    private static final void _close(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    protected static int parseVersionPart(String str) {
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt > '9' || cCharAt < '0') {
                break;
            }
            i10 = (i10 * 10) + (cCharAt - '0');
        }
        return i10;
    }

    public static Version versionFor(Class<?> cls) {
        Version versionPackageVersionFor = packageVersionFor(cls);
        if (versionPackageVersionFor != null) {
            return versionPackageVersionFor;
        }
        InputStream resourceAsStream = cls.getResourceAsStream("VERSION.txt");
        try {
            if (resourceAsStream == null) {
                return Version.unknownVersion();
            }
            return doReadVersion(new InputStreamReader(resourceAsStream, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return Version.unknownVersion();
        } finally {
            _close(resourceAsStream);
        }
    }
}
