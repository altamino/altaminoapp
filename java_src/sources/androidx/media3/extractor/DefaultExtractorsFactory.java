package androidx.media3.extractor;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.FileTypes;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.amr.AmrExtractor;
import androidx.media3.extractor.avi.AviExtractor;
import androidx.media3.extractor.flac.FlacExtractor;
import androidx.media3.extractor.flv.FlvExtractor;
import androidx.media3.extractor.jpeg.JpegExtractor;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.ogg.OggExtractor;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.DefaultTsPayloadReaderFactory;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.extractor.wav.WavExtractor;
import com.google.common.collect.a0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class DefaultExtractorsFactory implements ExtractorsFactory {
    private static final int[] DEFAULT_EXTRACTOR_ORDER = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
    private static final ExtensionLoader FLAC_EXTENSION_LOADER = new ExtensionLoader(new ExtensionLoader.ConstructorSupplier() { // from class: androidx.media3.extractor.b
        @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
        public final Constructor a() {
            return DefaultExtractorsFactory.e();
        }
    });
    private static final ExtensionLoader MIDI_EXTENSION_LOADER = new ExtensionLoader(new ExtensionLoader.ConstructorSupplier() { // from class: androidx.media3.extractor.c
        @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
        public final Constructor a() {
            return DefaultExtractorsFactory.f();
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

    @Nullable
    private a0<Format> tsSubtitleFormats;
    private int tsMode = 1;
    private int tsTimestampSearchBytes = 112800;

    /* JADX INFO: Access modifiers changed from: private */
    static final class ExtensionLoader {
        private final ConstructorSupplier constructorSupplier;
        private final AtomicBoolean extensionLoaded = new AtomicBoolean(false);

        @Nullable
        @GuardedBy
        private Constructor<? extends Extractor> extractorConstructor;

        public interface ConstructorSupplier {
            @Nullable
            Constructor<? extends Extractor> a() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException;
        }

        @Nullable
        private Constructor<? extends Extractor> b() {
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

        public ExtensionLoader(ConstructorSupplier constructorSupplier) {
            this.constructorSupplier = constructorSupplier;
        }

        @Nullable
        public Extractor a(Object... objArr) {
            Constructor<? extends Extractor> constructorB = b();
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

    private void d(int i10, List<Extractor> list) {
        switch (i10) {
            case 0:
                list.add(new Ac3Extractor());
                break;
            case 1:
                list.add(new Ac4Extractor());
                break;
            case 2:
                list.add(new AdtsExtractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | ((this.adtsFlags | (this.constantBitrateSeekingEnabled ? 1 : 0)) == true ? 1 : 0)));
                break;
            case 3:
                list.add(new AmrExtractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.amrFlags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 4:
                Extractor extractorA = FLAC_EXTENSION_LOADER.a(Integer.valueOf(this.flacFlags));
                if (extractorA == null) {
                    list.add(new FlacExtractor(this.flacFlags));
                } else {
                    list.add(extractorA);
                }
                break;
            case 5:
                list.add(new FlvExtractor());
                break;
            case 6:
                list.add(new MatroskaExtractor(this.matroskaFlags));
                break;
            case 7:
                list.add(new Mp3Extractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.mp3Flags | (this.constantBitrateSeekingEnabled ? 1 : 0)));
                break;
            case 8:
                list.add(new FragmentedMp4Extractor(this.fragmentedMp4Flags));
                list.add(new Mp4Extractor(this.mp4Flags));
                break;
            case 9:
                list.add(new OggExtractor());
                break;
            case 10:
                list.add(new PsExtractor());
                break;
            case 11:
                if (this.tsSubtitleFormats == null) {
                    this.tsSubtitleFormats = a0.x();
                }
                list.add(new TsExtractor(this.tsMode, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(this.tsFlags, this.tsSubtitleFormats), this.tsTimestampSearchBytes));
                break;
            case 12:
                list.add(new WavExtractor());
                break;
            case 14:
                list.add(new JpegExtractor());
                break;
            case 15:
                Extractor extractorA2 = MIDI_EXTENSION_LOADER.a(new Object[0]);
                if (extractorA2 != null) {
                    list.add(extractorA2);
                }
                break;
            case 16:
                list.add(new AviExtractor());
                break;
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public synchronized Extractor[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        try {
            int[] iArr = DEFAULT_EXTRACTOR_ORDER;
            arrayList = new ArrayList(iArr.length);
            int iB = FileTypes.b(map);
            if (iB != -1) {
                d(iB, arrayList);
            }
            int iC = FileTypes.c(uri);
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
        return (Extractor[]) arrayList.toArray(new Extractor[arrayList.size()]);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public synchronized Extractor[] createExtractors() {
        return a(Uri.EMPTY, new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Constructor<? extends Extractor> e() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(Extractor.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor<? extends Extractor> f() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(Extractor.class).getConstructor(new Class[0]);
    }
}
