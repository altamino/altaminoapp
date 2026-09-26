package org.threeten.bp.zone;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.net.URL;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends i {
    private List<String> regionIds;
    private final ConcurrentNavigableMap<String, a> versions = new ConcurrentSkipListMap();
    private Set<String> loadedUrls = new CopyOnWriteArraySet();

    static class a {
        private final String[] regionArray;
        private final AtomicReferenceArray<Object> ruleData;
        private final short[] ruleIndices;
        private final String versionId;

        public String toString() {
            return this.versionId;
        }

        f b(short s) throws Exception {
            Object objA = this.ruleData.get(s);
            if (objA instanceof byte[]) {
                objA = org.threeten.bp.zone.a.a(new DataInputStream(new ByteArrayInputStream((byte[]) objA)));
                this.ruleData.set(s, objA);
            }
            return (f) objA;
        }

        f c(String str) {
            int iBinarySearch = Arrays.binarySearch(this.regionArray, str);
            if (iBinarySearch < 0) {
                return null;
            }
            try {
                return b(this.ruleIndices[iBinarySearch]);
            } catch (Exception e) {
                throw new g("Invalid binary time-zone data: TZDB:" + str + ", version: " + this.versionId, e);
            }
        }

        a(String str, String[] strArr, short[] sArr, AtomicReferenceArray<Object> atomicReferenceArray) {
            this.ruleData = atomicReferenceArray;
            this.versionId = str;
            this.regionArray = strArr;
            this.ruleIndices = sArr;
        }
    }

    public c() {
        if (!h(i.class.getClassLoader())) {
            throw new g("No time-zone rules found for 'TZDB'");
        }
    }

    private boolean h(ClassLoader classLoader) {
        URL url = null;
        try {
            Enumeration<URL> resources = classLoader.getResources("org/threeten/bp/TZDB.dat");
            boolean zI = false;
            while (resources.hasMoreElements()) {
                URL urlNextElement = resources.nextElement();
                try {
                    zI |= i(urlNextElement);
                    url = urlNextElement;
                } catch (Exception e) {
                    e = e;
                    url = urlNextElement;
                    throw new g("Unable to load TZDB time-zone rules: " + url, e);
                }
            }
            return zI;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public String toString() {
        return "TZDB";
    }

    private boolean i(URL url) throws Throwable {
        InputStream inputStreamOpenStream;
        if (!this.loadedUrls.add(url.toExternalForm())) {
            return false;
        }
        try {
            inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
            try {
                boolean zG = g(inputStreamOpenStream);
                if (inputStreamOpenStream == null) {
                    return zG;
                }
                inputStreamOpenStream.close();
                return zG;
            } catch (Throwable th) {
                th = th;
                if (inputStreamOpenStream != null) {
                    inputStreamOpenStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenStream = null;
        }
    }

    private Iterable<a> j(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readByte() != 1) {
            throw new StreamCorruptedException("File format not recognised");
        }
        if (!"TZDB".equals(dataInputStream.readUTF())) {
            throw new StreamCorruptedException("File format not recognised");
        }
        int i10 = dataInputStream.readShort();
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = dataInputStream.readUTF();
        }
        int i12 = dataInputStream.readShort();
        String[] strArr2 = new String[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            strArr2[i13] = dataInputStream.readUTF();
        }
        this.regionIds = Arrays.asList(strArr2);
        int i14 = dataInputStream.readShort();
        Object[] objArr = new Object[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            byte[] bArr = new byte[dataInputStream.readShort()];
            dataInputStream.readFully(bArr);
            objArr[i15] = bArr;
        }
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(objArr);
        HashSet hashSet = new HashSet(i10);
        for (int i16 = 0; i16 < i10; i16++) {
            int i17 = dataInputStream.readShort();
            String[] strArr3 = new String[i17];
            short[] sArr = new short[i17];
            for (int i18 = 0; i18 < i17; i18++) {
                strArr3[i18] = strArr2[dataInputStream.readShort()];
                sArr[i18] = dataInputStream.readShort();
            }
            hashSet.add(new a(strArr[i16], strArr3, sArr, atomicReferenceArray));
        }
        return hashSet;
    }

    @Override // org.threeten.bp.zone.i
    protected f c(String str, boolean z6) {
        ra.d.i(str, "zoneId");
        f fVarC = this.versions.lastEntry().getValue().c(str);
        if (fVarC != null) {
            return fVarC;
        }
        throw new g("Unknown time-zone ID: " + str);
    }

    @Override // org.threeten.bp.zone.i
    protected Set<String> d() {
        return new HashSet(this.regionIds);
    }

    private boolean g(InputStream inputStream) throws IOException {
        boolean z6 = false;
        for (a aVar : j(inputStream)) {
            a aVarPutIfAbsent = this.versions.putIfAbsent(aVar.versionId, aVar);
            if (aVarPutIfAbsent != null && !aVarPutIfAbsent.versionId.equals(aVar.versionId)) {
                throw new g("Data already loaded for TZDB time-zone rules version: " + aVar.versionId);
            }
            z6 = true;
        }
        return z6;
    }

    public c(URL url) {
        try {
            if (i(url)) {
                return;
            }
            throw new g("No time-zone rules found: " + url);
        } catch (Exception e) {
            throw new g("Unable to load TZDB time-zone rules: " + url, e);
        }
    }

    public c(InputStream inputStream) {
        try {
            g(inputStream);
        } catch (Exception e) {
            throw new g("Unable to load TZDB time-zone rules", e);
        }
    }
}
