package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class HlsMultivariantPlaylist extends HlsPlaylist {
    public static final HlsMultivariantPlaylist EMPTY = new HlsMultivariantPlaylist("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());
    public static final int GROUP_INDEX_AUDIO = 1;
    public static final int GROUP_INDEX_SUBTITLE = 2;
    public static final int GROUP_INDEX_VARIANT = 0;
    public final List<Rendition> audios;
    public final List<Rendition> closedCaptions;
    public final List<Uri> mediaPlaylistUrls;

    @Nullable
    public final Format muxedAudioFormat;

    @Nullable
    public final List<Format> muxedCaptionFormats;
    public final List<DrmInitData> sessionKeyDrmInitData;
    public final List<Rendition> subtitles;
    public final Map<String, String> variableDefinitions;
    public final List<Variant> variants;
    public final List<Rendition> videos;

    public static final class Variant {

        @Nullable
        public final String audioGroupId;

        @Nullable
        public final String captionGroupId;
        public final Format format;

        @Nullable
        public final String subtitleGroupId;
        public final Uri url;

        @Nullable
        public final String videoGroupId;

        public static Variant b(Uri uri) {
            return new Variant(uri, new Format.Builder().U("0").M("application/x-mpegURL").G(), null, null, null, null);
        }

        public Variant a(Format format) {
            return new Variant(this.url, format, this.videoGroupId, this.audioGroupId, this.subtitleGroupId, this.captionGroupId);
        }

        public Variant(Uri uri, Format format, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.url = uri;
            this.format = format;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }
    }

    private static void a(List<Rendition> list, List<Uri> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = list.get(i10).url;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    public static final class Rendition {
        public final Format format;
        public final String groupId;
        public final String name;

        @Nullable
        public final Uri url;

        public Rendition(@Nullable Uri uri, Format format, String str, String str2) {
            this.url = uri;
            this.format = format;
            this.groupId = str;
            this.name = str2;
        }
    }

    private static <T> List<T> c(List<T> list, int i10, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            T t5 = list.get(i11);
            for (int i12 = 0; i12 < list2.size(); i12++) {
                StreamKey streamKey = list2.get(i12);
                if (streamKey.groupIndex == i10 && streamKey.streamIndex == i11) {
                    arrayList.add(t5);
                    break;
                }
            }
        }
        return arrayList;
    }

    private static List<Uri> e(List<Variant> list, List<Rendition> list2, List<Rendition> list3, List<Rendition> list4, List<Rendition> list5) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = list.get(i10).url;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        a(list2, arrayList);
        a(list3, arrayList);
        a(list4, arrayList);
        a(list5, arrayList);
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public HlsMultivariantPlaylist copy(List<StreamKey> list) {
        return new HlsMultivariantPlaylist(this.baseUri, this.tags, c(this.variants, 0, list), Collections.emptyList(), c(this.audios, 1, list), c(this.subtitles, 2, list), Collections.emptyList(), this.muxedAudioFormat, this.muxedCaptionFormats, this.hasIndependentSegments, this.variableDefinitions, this.sessionKeyDrmInitData);
    }

    public HlsMultivariantPlaylist(String str, List<String> list, List<Variant> list2, List<Rendition> list3, List<Rendition> list4, List<Rendition> list5, List<Rendition> list6, @Nullable Format format, @Nullable List<Format> list7, boolean z6, Map<String, String> map, List<DrmInitData> list8) {
        List<Format> listUnmodifiableList;
        super(str, list, z6);
        this.mediaPlaylistUrls = Collections.unmodifiableList(e(list2, list3, list4, list5, list6));
        this.variants = Collections.unmodifiableList(list2);
        this.videos = Collections.unmodifiableList(list3);
        this.audios = Collections.unmodifiableList(list4);
        this.subtitles = Collections.unmodifiableList(list5);
        this.closedCaptions = Collections.unmodifiableList(list6);
        this.muxedAudioFormat = format;
        if (list7 != null) {
            listUnmodifiableList = Collections.unmodifiableList(list7);
        } else {
            listUnmodifiableList = null;
        }
        this.muxedCaptionFormats = listUnmodifiableList;
        this.variableDefinitions = Collections.unmodifiableMap(map);
        this.sessionKeyDrmInitData = Collections.unmodifiableList(list8);
    }

    public static HlsMultivariantPlaylist d(String str) {
        return new HlsMultivariantPlaylist("", Collections.emptyList(), Collections.singletonList(Variant.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }
}
