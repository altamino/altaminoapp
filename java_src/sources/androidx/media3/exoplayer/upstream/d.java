package androidx.media3.exoplayer.upstream;

import androidx.media3.common.MediaItem;
import com.google.common.collect.b0;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class d {
    static {
        CmcdConfiguration.Factory factory = CmcdConfiguration.Factory.DEFAULT;
    }

    public static /* synthetic */ CmcdConfiguration a(MediaItem mediaItem) {
        String string = UUID.randomUUID().toString();
        String str = mediaItem.mediaId;
        if (str == null) {
            str = "";
        }
        return new CmcdConfiguration(string, str, new CmcdConfiguration.RequestConfig() { // from class: androidx.media3.exoplayer.upstream.CmcdConfiguration.Factory.1
            @Override // androidx.media3.exoplayer.upstream.CmcdConfiguration.RequestConfig
            public /* synthetic */ boolean a(String str2) {
                return e.c(this, str2);
            }

            @Override // androidx.media3.exoplayer.upstream.CmcdConfiguration.RequestConfig
            public /* synthetic */ b0 b() {
                return e.a(this);
            }

            @Override // androidx.media3.exoplayer.upstream.CmcdConfiguration.RequestConfig
            public /* synthetic */ int c(int i10) {
                return e.b(this, i10);
            }

            AnonymousClass1() {
            }
        });
    }
}
