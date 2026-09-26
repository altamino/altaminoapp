package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
public final class i implements r {
    private static final int[] DEFAULT_EXTRACTOR_ORDER = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
    private static final a FLAC_EXTENSION_LOADER = new a(new a.InterfaceC0171a() { // from class: com.google.android.exoplayer2.extractor.g
        @Override // com.google.android.exoplayer2.extractor.i.a.InterfaceC0171a
        public final Constructor a() {
            return i.e();
        }
    });
    private static final a MIDI_EXTENSION_LOADER = new a(new a.InterfaceC0171a() { // from class: com.google.android.exoplayer2.extractor.h
        @Override // com.google.android.exoplayer2.extractor.i.a.InterfaceC0171a
        public final Constructor a() {
            return i.f();
        }
    });
    private int adtsFlags;
    private int amrFlags;
    private boolean constantBitrateSeekingAlwaysEnabled;
    private boolean constantBitrateSeekingEnabled;
    private int flacFlags;
    private int fragmentedMp4Flags;
    private int matroskaFlags;
    private int mp3Flags;
    private int mp4Flags;
    private int tsFlags;
    private int tsMode = 1;
    private int tsTimestampSearchBytes = 112800;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        private final InterfaceC0171a constructorSupplier;
        private final AtomicBoolean extensionLoaded = new AtomicBoolean(false);

        @Nullable
        @GuardedBy
        private Constructor<? extends l> extractorConstructor;

        /* JADX INFO: renamed from: com.google.android.exoplayer2.extractor.i$a$a, reason: collision with other inner class name */
        public interface InterfaceC0171a {
            @Nullable
            Constructor<? extends l> a() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException;
        }

        @Nullable
        private Constructor<? extends l> b() {
            synchronized (this.extensionLoaded) {
                if (this.extensionLoaded.get()) {
                    return this.extractorConstructor;
                }
                try {
                    return this.constructorSupplier.a();
                } catch (ClassNotFoundException unused) {
                    this.extensionLoaded.set(true);
                    return this.extractorConstructor;
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating extension", e);
                }
            }
        }

        public a(InterfaceC0171a interfaceC0171a) {
            this.constructorSupplier = interfaceC0171a;
        }

        @Nullable
        public l a(Object... objArr) {
            Constructor<? extends l> constructorB = b();
            if (constructorB == null) {
                return null;
            }
            try {
                return constructorB.newInstance(objArr);
            } catch (Exception e) {
                throw new IllegalStateException("Unexpected error creating extractor", e);
            }
        }
    }

    private void d(int i10, List<l> list) {
        switch (i10) {
            case 0:
                list.add(new com.google.android.exoplayer2.extractor.ts.b());
                break;
            case 1:
                list.add(new com.google.android.exoplayer2.extractor.ts.e());
                break;
            case 2:
                list.add(new com.google.android.exoplayer2.extractor.ts.h((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | ((this.adtsFlags | (this.constantBitrateSeekingEnabled ? 1 : 0)) == true ? 1 : 0)));
                break;
            case 3:
                list.add(new o2.b((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.amrFlags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 4:
                l lVarA = FLAC_EXTENSION_LOADER.a(Integer.valueOf(this.flacFlags));
                if (lVarA == null) {
                    list.add(new p2.d(this.flacFlags));
                } else {
                    list.add(lVarA);
                }
                break;
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.c());
                break;
            case 6:
                list.add(new com.google.android.exoplayer2.extractor.mkv.e(this.matroskaFlags));
                break;
            case 7:
                list.add(new com.google.android.exoplayer2.extractor.mp3.f((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.mp3Flags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 8:
                list.add(new com.google.android.exoplayer2.extractor.mp4.g(this.fragmentedMp4Flags));
                list.add(new com.google.android.exoplayer2.extractor.mp4.k(this.mp4Flags));
                break;
            case 9:
                list.add(new com.google.android.exoplayer2.extractor.ogg.d());
                break;
            case 10:
                list.add(new com.google.android.exoplayer2.extractor.ts.a0());
                break;
            case 11:
                list.add(new com.google.android.exoplayer2.extractor.ts.h0(this.tsMode, this.tsFlags, this.tsTimestampSearchBytes));
                break;
            case 12:
                list.add(new q2.b());
                break;
            case 14:
                list.add(new com.google.android.exoplayer2.extractor.jpeg.a());
                break;
            case 15:
                l lVarA2 = MIDI_EXTENSION_LOADER.a(new Object[0]);
                if (lVarA2 != null) {
                    list.add(lVarA2);
                }
                break;
            case 16:
                list.add(new com.google.android.exoplayer2.extractor.avi.b());
                break;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.r
    public synchronized l[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        try {
            int[] iArr = DEFAULT_EXTRACTOR_ORDER;
            arrayList = new ArrayList(iArr.length);
            int iB = com.google.android.exoplayer2.util.l.b(map);
            if (iB != -1) {
                d(iB, arrayList);
            }
            int iC = com.google.android.exoplayer2.util.l.c(uri);
            if (iC != -1 && iC != iB) {
                d(iC, arrayList);
            }
            for (int i10 : iArr) {
                if (i10 != iB && i10 != iC) {
                    d(i10, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }

    @Override // com.google.android.exoplayer2.extractor.r
    public synchronized l[] createExtractors() {
        return a(Uri.EMPTY, new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Constructor<? extends l> e() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(l.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor<? extends l> f() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(l.class).getConstructor(new Class[0]);
    }
}
