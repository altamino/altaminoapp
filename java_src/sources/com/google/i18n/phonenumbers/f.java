package com.google.i18n.phonenumbers;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes10.dex */
final class f implements e {
    private final ConcurrentHashMap<String, j> geographicalRegions;
    private final c metadataLoader;
    private final ConcurrentHashMap<Integer, j> nonGeographicalRegions;
    private final String phoneNumberMetadataFilePrefix;

    f(String str, c cVar) {
        this.geographicalRegions = new ConcurrentHashMap<>();
        this.nonGeographicalRegions = new ConcurrentHashMap<>();
        this.phoneNumberMetadataFilePrefix = str;
        this.metadataLoader = cVar;
    }

    @Override // com.google.i18n.phonenumbers.e
    public j a(String str) {
        return d.a(str, this.geographicalRegions, this.phoneNumberMetadataFilePrefix, this.metadataLoader);
    }

    private boolean c(int i10) {
        List<String> list = b.a().get(Integer.valueOf(i10));
        if (list.size() != 1 || !h.REGION_CODE_FOR_NON_GEO_ENTITY.equals(list.get(0))) {
            return false;
        }
        return true;
    }

    @Override // com.google.i18n.phonenumbers.e
    public j b(int i10) {
        if (!c(i10)) {
            return null;
        }
        return d.a(Integer.valueOf(i10), this.nonGeographicalRegions, this.phoneNumberMetadataFilePrefix, this.metadataLoader);
    }

    f(c cVar) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", cVar);
    }
}
