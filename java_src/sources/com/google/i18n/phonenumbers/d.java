package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
final class d {
    private static final String ALTERNATE_FORMATS_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto";
    static final String MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto";
    private static final String SHORT_NUMBER_METADATA_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto";
    static final String SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME = "/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto";
    static final c DEFAULT_METADATA_LOADER = new a();
    private static final Logger logger = Logger.getLogger(d.class.getName());
    private static final ConcurrentHashMap<Integer, j> alternateFormatsMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, j> shortNumberMetadataMap = new ConcurrentHashMap<>();
    private static final Set<Integer> alternateFormatsCountryCodes = com.google.i18n.phonenumbers.a.a();
    private static final Set<String> shortNumberMetadataRegionCodes = n.a();

    static class a implements c {
        @Override // com.google.i18n.phonenumbers.c
        public InputStream a(String str) {
            return d.class.getResourceAsStream(str);
        }

        a() {
        }
    }

    private static k c(InputStream inputStream) throws Throwable {
        ObjectInputStream objectInputStream = null;
        try {
            try {
                ObjectInputStream objectInputStream2 = new ObjectInputStream(inputStream);
                try {
                    k kVar = new k();
                    try {
                        kVar.readExternal(objectInputStream2);
                        try {
                            objectInputStream2.close();
                        } catch (IOException e) {
                            logger.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e);
                        }
                        return kVar;
                    } catch (IOException e2) {
                        throw new RuntimeException("cannot load/parse metadata", e2);
                    }
                } catch (Throwable th) {
                    th = th;
                    objectInputStream = objectInputStream2;
                    try {
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        } else {
                            inputStream.close();
                        }
                    } catch (IOException e6) {
                        logger.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e6);
                    }
                    throw th;
                }
            } catch (IOException e7) {
                throw new RuntimeException("cannot load/parse metadata", e7);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private d() {
    }

    static <T> j a(T t5, ConcurrentHashMap<T, j> concurrentHashMap, String str, c cVar) {
        j jVar = concurrentHashMap.get(t5);
        if (jVar != null) {
            return jVar;
        }
        String str2 = str + "_" + t5;
        List<j> listB = b(str2, cVar);
        if (listB.size() > 1) {
            logger.log(Level.WARNING, "more than one metadata in file " + str2);
        }
        j jVar2 = listB.get(0);
        j jVarPutIfAbsent = concurrentHashMap.putIfAbsent(t5, jVar2);
        if (jVarPutIfAbsent != null) {
            return jVarPutIfAbsent;
        }
        return jVar2;
    }

    private static List<j> b(String str, c cVar) {
        InputStream inputStreamA = cVar.a(str);
        if (inputStreamA != null) {
            List<j> listB = c(inputStreamA).b();
            if (listB.size() != 0) {
                return listB;
            }
            throw new IllegalStateException("empty metadata: " + str);
        }
        throw new IllegalStateException("missing metadata: " + str);
    }
}
