package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@zzard
/* loaded from: classes2.dex */
public final class zzyc {
    public static final zzyc zzche = new zzyc();

    @VisibleForTesting
    protected zzyc() {
    }

    public static zzxz zza(Context context, zzaaz zzaazVar) {
        Context context2;
        List listUnmodifiableList;
        String strZza;
        Date birthday = zzaazVar.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1L;
        String contentUrl = zzaazVar.getContentUrl();
        int gender = zzaazVar.getGender();
        Set<String> keywords = zzaazVar.getKeywords();
        if (keywords.isEmpty()) {
            context2 = context;
            listUnmodifiableList = null;
        } else {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(keywords));
            context2 = context;
        }
        boolean zIsTestDevice = zzaazVar.isTestDevice(context2);
        int iZzqc = zzaazVar.zzqc();
        Location location = zzaazVar.getLocation();
        Bundle networkExtrasBundle = zzaazVar.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = zzaazVar.getManualImpressionsEnabled();
        String publisherProvidedId = zzaazVar.getPublisherProvidedId();
        SearchAdRequest searchAdRequestZzpz = zzaazVar.zzpz();
        zzaca zzacaVar = searchAdRequestZzpz != null ? new zzaca(searchAdRequestZzpz) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzyt.zzpa();
            strZza = zzazt.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            strZza = null;
        }
        return new zzxz(8, time, networkExtrasBundle, gender, listUnmodifiableList, zIsTestDevice, iZzqc, manualImpressionsEnabled, publisherProvidedId, zzacaVar, location, contentUrl, zzaazVar.zzqb(), zzaazVar.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzaazVar.zzqd())), zzaazVar.zzpy(), strZza, zzaazVar.isDesignedForFamilies(), null, zzaazVar.zzqe(), zzaazVar.getMaxAdContentRating());
    }
}
