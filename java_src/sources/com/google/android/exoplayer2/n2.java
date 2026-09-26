package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public final class n2 implements h {
    private static final int FIELD_ALBUM_ARTIST = 3;
    private static final int FIELD_ALBUM_TITLE = 2;
    private static final int FIELD_ARTIST = 1;
    private static final int FIELD_ARTWORK_DATA = 10;
    private static final int FIELD_ARTWORK_DATA_TYPE = 29;
    private static final int FIELD_ARTWORK_URI = 11;
    private static final int FIELD_COMPILATION = 28;
    private static final int FIELD_COMPOSER = 23;
    private static final int FIELD_CONDUCTOR = 24;
    private static final int FIELD_DESCRIPTION = 6;
    private static final int FIELD_DISC_NUMBER = 25;
    private static final int FIELD_DISPLAY_TITLE = 4;
    private static final int FIELD_EXTRAS = 1000;
    private static final int FIELD_FOLDER_TYPE = 14;
    private static final int FIELD_GENRE = 27;
    private static final int FIELD_IS_PLAYABLE = 15;
    private static final int FIELD_MEDIA_URI = 7;
    private static final int FIELD_OVERALL_RATING = 9;
    private static final int FIELD_RECORDING_DAY = 18;
    private static final int FIELD_RECORDING_MONTH = 17;
    private static final int FIELD_RECORDING_YEAR = 16;
    private static final int FIELD_RELEASE_DAY = 21;
    private static final int FIELD_RELEASE_MONTH = 20;
    private static final int FIELD_RELEASE_YEAR = 19;
    private static final int FIELD_STATION = 30;
    private static final int FIELD_SUBTITLE = 5;
    private static final int FIELD_TITLE = 0;
    private static final int FIELD_TOTAL_DISC_COUNT = 26;
    private static final int FIELD_TOTAL_TRACK_COUNT = 13;
    private static final int FIELD_TRACK_NUMBER = 12;
    private static final int FIELD_USER_RATING = 8;
    private static final int FIELD_WRITER = 22;
    public static final int FOLDER_TYPE_ALBUMS = 2;
    public static final int FOLDER_TYPE_ARTISTS = 3;
    public static final int FOLDER_TYPE_GENRES = 4;
    public static final int FOLDER_TYPE_MIXED = 0;
    public static final int FOLDER_TYPE_NONE = -1;
    public static final int FOLDER_TYPE_PLAYLISTS = 5;
    public static final int FOLDER_TYPE_TITLES = 1;
    public static final int FOLDER_TYPE_YEARS = 6;
    public static final int PICTURE_TYPE_ARTIST_PERFORMER = 8;
    public static final int PICTURE_TYPE_A_BRIGHT_COLORED_FISH = 17;
    public static final int PICTURE_TYPE_BACK_COVER = 4;
    public static final int PICTURE_TYPE_BAND_ARTIST_LOGO = 19;
    public static final int PICTURE_TYPE_BAND_ORCHESTRA = 10;
    public static final int PICTURE_TYPE_COMPOSER = 11;
    public static final int PICTURE_TYPE_CONDUCTOR = 9;
    public static final int PICTURE_TYPE_DURING_PERFORMANCE = 15;
    public static final int PICTURE_TYPE_DURING_RECORDING = 14;
    public static final int PICTURE_TYPE_FILE_ICON = 1;
    public static final int PICTURE_TYPE_FILE_ICON_OTHER = 2;
    public static final int PICTURE_TYPE_FRONT_COVER = 3;
    public static final int PICTURE_TYPE_ILLUSTRATION = 18;
    public static final int PICTURE_TYPE_LEAD_ARTIST_PERFORMER = 7;
    public static final int PICTURE_TYPE_LEAFLET_PAGE = 5;
    public static final int PICTURE_TYPE_LYRICIST = 12;
    public static final int PICTURE_TYPE_MEDIA = 6;
    public static final int PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE = 16;
    public static final int PICTURE_TYPE_OTHER = 0;
    public static final int PICTURE_TYPE_PUBLISHER_STUDIO_LOGO = 20;
    public static final int PICTURE_TYPE_RECORDING_LOCATION = 13;

    @Nullable
    public final CharSequence albumArtist;

    @Nullable
    public final CharSequence albumTitle;

    @Nullable
    public final CharSequence artist;

    @Nullable
    public final byte[] artworkData;

    @Nullable
    public final Integer artworkDataType;

    @Nullable
    public final Uri artworkUri;

    @Nullable
    public final CharSequence compilation;

    @Nullable
    public final CharSequence composer;

    @Nullable
    public final CharSequence conductor;

    @Nullable
    public final CharSequence description;

    @Nullable
    public final Integer discNumber;

    @Nullable
    public final CharSequence displayTitle;

    @Nullable
    public final Bundle extras;

    @Nullable
    public final Integer folderType;

    @Nullable
    public final CharSequence genre;

    @Nullable
    public final Boolean isPlayable;

    @Nullable
    public final k3 overallRating;

    @Nullable
    public final Integer recordingDay;

    @Nullable
    public final Integer recordingMonth;

    @Nullable
    public final Integer recordingYear;

    @Nullable
    public final Integer releaseDay;

    @Nullable
    public final Integer releaseMonth;

    @Nullable
    public final Integer releaseYear;

    @Nullable
    public final CharSequence station;

    @Nullable
    public final CharSequence subtitle;

    @Nullable
    public final CharSequence title;

    @Nullable
    public final Integer totalDiscCount;

    @Nullable
    public final Integer totalTrackCount;

    @Nullable
    public final Integer trackNumber;

    @Nullable
    public final k3 userRating;

    @Nullable
    public final CharSequence writer;

    @Nullable
    @Deprecated
    public final Integer year;
    public static final n2 EMPTY = new b().F();
    public static final h.a<n2> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.m2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return n2.c(bundle);
        }
    };

    public static final class b {

        @Nullable
        private CharSequence albumArtist;

        @Nullable
        private CharSequence albumTitle;

        @Nullable
        private CharSequence artist;

        @Nullable
        private byte[] artworkData;

        @Nullable
        private Integer artworkDataType;

        @Nullable
        private Uri artworkUri;

        @Nullable
        private CharSequence compilation;

        @Nullable
        private CharSequence composer;

        @Nullable
        private CharSequence conductor;

        @Nullable
        private CharSequence description;

        @Nullable
        private Integer discNumber;

        @Nullable
        private CharSequence displayTitle;

        @Nullable
        private Bundle extras;

        @Nullable
        private Integer folderType;

        @Nullable
        private CharSequence genre;

        @Nullable
        private Boolean isPlayable;

        @Nullable
        private k3 overallRating;

        @Nullable
        private Integer recordingDay;

        @Nullable
        private Integer recordingMonth;

        @Nullable
        private Integer recordingYear;

        @Nullable
        private Integer releaseDay;

        @Nullable
        private Integer releaseMonth;

        @Nullable
        private Integer releaseYear;

        @Nullable
        private CharSequence station;

        @Nullable
        private CharSequence subtitle;

        @Nullable
        private CharSequence title;

        @Nullable
        private Integer totalDiscCount;

        @Nullable
        private Integer totalTrackCount;

        @Nullable
        private Integer trackNumber;

        @Nullable
        private k3 userRating;

        @Nullable
        private CharSequence writer;

        public b I(Metadata metadata) {
            for (int i10 = 0; i10 < metadata.h(); i10++) {
                metadata.g(i10).b(this);
            }
            return this;
        }

        public b J(List<Metadata> list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                Metadata metadata = list.get(i10);
                for (int i11 = 0; i11 < metadata.h(); i11++) {
                    metadata.g(i11).b(this);
                }
            }
            return this;
        }

        public b K(@Nullable CharSequence charSequence) {
            this.albumArtist = charSequence;
            return this;
        }

        public b L(@Nullable CharSequence charSequence) {
            this.albumTitle = charSequence;
            return this;
        }

        public b M(@Nullable CharSequence charSequence) {
            this.artist = charSequence;
            return this;
        }

        public b O(@Nullable Uri uri) {
            this.artworkUri = uri;
            return this;
        }

        public b P(@Nullable CharSequence charSequence) {
            this.compilation = charSequence;
            return this;
        }

        public b Q(@Nullable CharSequence charSequence) {
            this.composer = charSequence;
            return this;
        }

        public b R(@Nullable CharSequence charSequence) {
            this.conductor = charSequence;
            return this;
        }

        public b S(@Nullable CharSequence charSequence) {
            this.description = charSequence;
            return this;
        }

        public b T(@Nullable Integer num) {
            this.discNumber = num;
            return this;
        }

        public b U(@Nullable CharSequence charSequence) {
            this.displayTitle = charSequence;
            return this;
        }

        public b V(@Nullable Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public b W(@Nullable Integer num) {
            this.folderType = num;
            return this;
        }

        public b X(@Nullable CharSequence charSequence) {
            this.genre = charSequence;
            return this;
        }

        public b Y(@Nullable Boolean bool) {
            this.isPlayable = bool;
            return this;
        }

        public b Z(@Nullable k3 k3Var) {
            this.overallRating = k3Var;
            return this;
        }

        public b a0(@IntRange @Nullable Integer num) {
            this.recordingDay = num;
            return this;
        }

        public b b0(@IntRange @Nullable Integer num) {
            this.recordingMonth = num;
            return this;
        }

        public b c0(@Nullable Integer num) {
            this.recordingYear = num;
            return this;
        }

        public b d0(@IntRange @Nullable Integer num) {
            this.releaseDay = num;
            return this;
        }

        public b e0(@IntRange @Nullable Integer num) {
            this.releaseMonth = num;
            return this;
        }

        public b f0(@Nullable Integer num) {
            this.releaseYear = num;
            return this;
        }

        public b g0(@Nullable CharSequence charSequence) {
            this.station = charSequence;
            return this;
        }

        public b h0(@Nullable CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }

        public b i0(@Nullable CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }

        public b j0(@Nullable Integer num) {
            this.totalDiscCount = num;
            return this;
        }

        public b k0(@Nullable Integer num) {
            this.totalTrackCount = num;
            return this;
        }

        public b l0(@Nullable Integer num) {
            this.trackNumber = num;
            return this;
        }

        public b m0(@Nullable k3 k3Var) {
            this.userRating = k3Var;
            return this;
        }

        public b n0(@Nullable CharSequence charSequence) {
            this.writer = charSequence;
            return this;
        }

        public b() {
        }

        public n2 F() {
            return new n2(this);
        }

        public b G(byte[] bArr, int i10) {
            if (this.artworkData == null || com.google.android.exoplayer2.util.o0.c(Integer.valueOf(i10), 3) || !com.google.android.exoplayer2.util.o0.c(this.artworkDataType, 3)) {
                this.artworkData = (byte[]) bArr.clone();
                this.artworkDataType = Integer.valueOf(i10);
            }
            return this;
        }

        public b H(@Nullable n2 n2Var) {
            if (n2Var == null) {
                return this;
            }
            CharSequence charSequence = n2Var.title;
            if (charSequence != null) {
                i0(charSequence);
            }
            CharSequence charSequence2 = n2Var.artist;
            if (charSequence2 != null) {
                M(charSequence2);
            }
            CharSequence charSequence3 = n2Var.albumTitle;
            if (charSequence3 != null) {
                L(charSequence3);
            }
            CharSequence charSequence4 = n2Var.albumArtist;
            if (charSequence4 != null) {
                K(charSequence4);
            }
            CharSequence charSequence5 = n2Var.displayTitle;
            if (charSequence5 != null) {
                U(charSequence5);
            }
            CharSequence charSequence6 = n2Var.subtitle;
            if (charSequence6 != null) {
                h0(charSequence6);
            }
            CharSequence charSequence7 = n2Var.description;
            if (charSequence7 != null) {
                S(charSequence7);
            }
            k3 k3Var = n2Var.userRating;
            if (k3Var != null) {
                m0(k3Var);
            }
            k3 k3Var2 = n2Var.overallRating;
            if (k3Var2 != null) {
                Z(k3Var2);
            }
            byte[] bArr = n2Var.artworkData;
            if (bArr != null) {
                N(bArr, n2Var.artworkDataType);
            }
            Uri uri = n2Var.artworkUri;
            if (uri != null) {
                O(uri);
            }
            Integer num = n2Var.trackNumber;
            if (num != null) {
                l0(num);
            }
            Integer num2 = n2Var.totalTrackCount;
            if (num2 != null) {
                k0(num2);
            }
            Integer num3 = n2Var.folderType;
            if (num3 != null) {
                W(num3);
            }
            Boolean bool = n2Var.isPlayable;
            if (bool != null) {
                Y(bool);
            }
            Integer num4 = n2Var.year;
            if (num4 != null) {
                c0(num4);
            }
            Integer num5 = n2Var.recordingYear;
            if (num5 != null) {
                c0(num5);
            }
            Integer num6 = n2Var.recordingMonth;
            if (num6 != null) {
                b0(num6);
            }
            Integer num7 = n2Var.recordingDay;
            if (num7 != null) {
                a0(num7);
            }
            Integer num8 = n2Var.releaseYear;
            if (num8 != null) {
                f0(num8);
            }
            Integer num9 = n2Var.releaseMonth;
            if (num9 != null) {
                e0(num9);
            }
            Integer num10 = n2Var.releaseDay;
            if (num10 != null) {
                d0(num10);
            }
            CharSequence charSequence8 = n2Var.writer;
            if (charSequence8 != null) {
                n0(charSequence8);
            }
            CharSequence charSequence9 = n2Var.composer;
            if (charSequence9 != null) {
                Q(charSequence9);
            }
            CharSequence charSequence10 = n2Var.conductor;
            if (charSequence10 != null) {
                R(charSequence10);
            }
            Integer num11 = n2Var.discNumber;
            if (num11 != null) {
                T(num11);
            }
            Integer num12 = n2Var.totalDiscCount;
            if (num12 != null) {
                j0(num12);
            }
            CharSequence charSequence11 = n2Var.genre;
            if (charSequence11 != null) {
                X(charSequence11);
            }
            CharSequence charSequence12 = n2Var.compilation;
            if (charSequence12 != null) {
                P(charSequence12);
            }
            CharSequence charSequence13 = n2Var.station;
            if (charSequence13 != null) {
                g0(charSequence13);
            }
            Bundle bundle = n2Var.extras;
            if (bundle != null) {
                V(bundle);
            }
            return this;
        }

        public b N(@Nullable byte[] bArr, @Nullable Integer num) {
            this.artworkData = bArr == null ? null : (byte[]) bArr.clone();
            this.artworkDataType = num;
            return this;
        }

        private b(n2 n2Var) {
            this.title = n2Var.title;
            this.artist = n2Var.artist;
            this.albumTitle = n2Var.albumTitle;
            this.albumArtist = n2Var.albumArtist;
            this.displayTitle = n2Var.displayTitle;
            this.subtitle = n2Var.subtitle;
            this.description = n2Var.description;
            this.userRating = n2Var.userRating;
            this.overallRating = n2Var.overallRating;
            this.artworkData = n2Var.artworkData;
            this.artworkDataType = n2Var.artworkDataType;
            this.artworkUri = n2Var.artworkUri;
            this.trackNumber = n2Var.trackNumber;
            this.totalTrackCount = n2Var.totalTrackCount;
            this.folderType = n2Var.folderType;
            this.isPlayable = n2Var.isPlayable;
            this.recordingYear = n2Var.recordingYear;
            this.recordingMonth = n2Var.recordingMonth;
            this.recordingDay = n2Var.recordingDay;
            this.releaseYear = n2Var.releaseYear;
            this.releaseMonth = n2Var.releaseMonth;
            this.releaseDay = n2Var.releaseDay;
            this.writer = n2Var.writer;
            this.composer = n2Var.composer;
            this.conductor = n2Var.conductor;
            this.discNumber = n2Var.discNumber;
            this.totalDiscCount = n2Var.totalDiscCount;
            this.genre = n2Var.genre;
            this.compilation = n2Var.compilation;
            this.station = n2Var.station;
            this.extras = n2Var.extras;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n2.class != obj.getClass()) {
            return false;
        }
        n2 n2Var = (n2) obj;
        return com.google.android.exoplayer2.util.o0.c(this.title, n2Var.title) && com.google.android.exoplayer2.util.o0.c(this.artist, n2Var.artist) && com.google.android.exoplayer2.util.o0.c(this.albumTitle, n2Var.albumTitle) && com.google.android.exoplayer2.util.o0.c(this.albumArtist, n2Var.albumArtist) && com.google.android.exoplayer2.util.o0.c(this.displayTitle, n2Var.displayTitle) && com.google.android.exoplayer2.util.o0.c(this.subtitle, n2Var.subtitle) && com.google.android.exoplayer2.util.o0.c(this.description, n2Var.description) && com.google.android.exoplayer2.util.o0.c(this.userRating, n2Var.userRating) && com.google.android.exoplayer2.util.o0.c(this.overallRating, n2Var.overallRating) && Arrays.equals(this.artworkData, n2Var.artworkData) && com.google.android.exoplayer2.util.o0.c(this.artworkDataType, n2Var.artworkDataType) && com.google.android.exoplayer2.util.o0.c(this.artworkUri, n2Var.artworkUri) && com.google.android.exoplayer2.util.o0.c(this.trackNumber, n2Var.trackNumber) && com.google.android.exoplayer2.util.o0.c(this.totalTrackCount, n2Var.totalTrackCount) && com.google.android.exoplayer2.util.o0.c(this.folderType, n2Var.folderType) && com.google.android.exoplayer2.util.o0.c(this.isPlayable, n2Var.isPlayable) && com.google.android.exoplayer2.util.o0.c(this.recordingYear, n2Var.recordingYear) && com.google.android.exoplayer2.util.o0.c(this.recordingMonth, n2Var.recordingMonth) && com.google.android.exoplayer2.util.o0.c(this.recordingDay, n2Var.recordingDay) && com.google.android.exoplayer2.util.o0.c(this.releaseYear, n2Var.releaseYear) && com.google.android.exoplayer2.util.o0.c(this.releaseMonth, n2Var.releaseMonth) && com.google.android.exoplayer2.util.o0.c(this.releaseDay, n2Var.releaseDay) && com.google.android.exoplayer2.util.o0.c(this.writer, n2Var.writer) && com.google.android.exoplayer2.util.o0.c(this.composer, n2Var.composer) && com.google.android.exoplayer2.util.o0.c(this.conductor, n2Var.conductor) && com.google.android.exoplayer2.util.o0.c(this.discNumber, n2Var.discNumber) && com.google.android.exoplayer2.util.o0.c(this.totalDiscCount, n2Var.totalDiscCount) && com.google.android.exoplayer2.util.o0.c(this.genre, n2Var.genre) && com.google.android.exoplayer2.util.o0.c(this.compilation, n2Var.compilation) && com.google.android.exoplayer2.util.o0.c(this.station, n2Var.station);
    }

    private n2(b bVar) {
        this.title = bVar.title;
        this.artist = bVar.artist;
        this.albumTitle = bVar.albumTitle;
        this.albumArtist = bVar.albumArtist;
        this.displayTitle = bVar.displayTitle;
        this.subtitle = bVar.subtitle;
        this.description = bVar.description;
        this.userRating = bVar.userRating;
        this.overallRating = bVar.overallRating;
        this.artworkData = bVar.artworkData;
        this.artworkDataType = bVar.artworkDataType;
        this.artworkUri = bVar.artworkUri;
        this.trackNumber = bVar.trackNumber;
        this.totalTrackCount = bVar.totalTrackCount;
        this.folderType = bVar.folderType;
        this.isPlayable = bVar.isPlayable;
        this.year = bVar.recordingYear;
        this.recordingYear = bVar.recordingYear;
        this.recordingMonth = bVar.recordingMonth;
        this.recordingDay = bVar.recordingDay;
        this.releaseYear = bVar.releaseYear;
        this.releaseMonth = bVar.releaseMonth;
        this.releaseDay = bVar.releaseDay;
        this.writer = bVar.writer;
        this.composer = bVar.composer;
        this.conductor = bVar.conductor;
        this.discNumber = bVar.discNumber;
        this.totalDiscCount = bVar.totalDiscCount;
        this.genre = bVar.genre;
        this.compilation = bVar.compilation;
        this.station = bVar.station;
        this.extras = bVar.extras;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static n2 c(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        b bVar = new b();
        bVar.i0(bundle.getCharSequence(d(0))).M(bundle.getCharSequence(d(1))).L(bundle.getCharSequence(d(2))).K(bundle.getCharSequence(d(3))).U(bundle.getCharSequence(d(4))).h0(bundle.getCharSequence(d(5))).S(bundle.getCharSequence(d(6))).N(bundle.getByteArray(d(10)), bundle.containsKey(d(29)) ? Integer.valueOf(bundle.getInt(d(29))) : null).O((Uri) bundle.getParcelable(d(11))).n0(bundle.getCharSequence(d(22))).Q(bundle.getCharSequence(d(23))).R(bundle.getCharSequence(d(24))).X(bundle.getCharSequence(d(27))).P(bundle.getCharSequence(d(28))).g0(bundle.getCharSequence(d(30))).V(bundle.getBundle(d(1000)));
        if (bundle.containsKey(d(8)) && (bundle3 = bundle.getBundle(d(8))) != null) {
            bVar.m0((k3) k3.CREATOR.a(bundle3));
        }
        if (bundle.containsKey(d(9)) && (bundle2 = bundle.getBundle(d(9))) != null) {
            bVar.Z((k3) k3.CREATOR.a(bundle2));
        }
        if (bundle.containsKey(d(12))) {
            bVar.l0(Integer.valueOf(bundle.getInt(d(12))));
        }
        if (bundle.containsKey(d(13))) {
            bVar.k0(Integer.valueOf(bundle.getInt(d(13))));
        }
        if (bundle.containsKey(d(14))) {
            bVar.W(Integer.valueOf(bundle.getInt(d(14))));
        }
        if (bundle.containsKey(d(15))) {
            bVar.Y(Boolean.valueOf(bundle.getBoolean(d(15))));
        }
        if (bundle.containsKey(d(16))) {
            bVar.c0(Integer.valueOf(bundle.getInt(d(16))));
        }
        if (bundle.containsKey(d(17))) {
            bVar.b0(Integer.valueOf(bundle.getInt(d(17))));
        }
        if (bundle.containsKey(d(18))) {
            bVar.a0(Integer.valueOf(bundle.getInt(d(18))));
        }
        if (bundle.containsKey(d(19))) {
            bVar.f0(Integer.valueOf(bundle.getInt(d(19))));
        }
        if (bundle.containsKey(d(20))) {
            bVar.e0(Integer.valueOf(bundle.getInt(d(20))));
        }
        if (bundle.containsKey(d(21))) {
            bVar.d0(Integer.valueOf(bundle.getInt(d(21))));
        }
        if (bundle.containsKey(d(25))) {
            bVar.T(Integer.valueOf(bundle.getInt(d(25))));
        }
        if (bundle.containsKey(d(26))) {
            bVar.j0(Integer.valueOf(bundle.getInt(d(26))));
        }
        return bVar.F();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public b b() {
        return new b();
    }

    public int hashCode() {
        return com.google.common.base.k.b(this.title, this.artist, this.albumTitle, this.albumArtist, this.displayTitle, this.subtitle, this.description, this.userRating, this.overallRating, Integer.valueOf(Arrays.hashCode(this.artworkData)), this.artworkDataType, this.artworkUri, this.trackNumber, this.totalTrackCount, this.folderType, this.isPlayable, this.recordingYear, this.recordingMonth, this.recordingDay, this.releaseYear, this.releaseMonth, this.releaseDay, this.writer, this.composer, this.conductor, this.discNumber, this.totalDiscCount, this.genre, this.compilation, this.station);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.title);
        bundle.putCharSequence(d(1), this.artist);
        bundle.putCharSequence(d(2), this.albumTitle);
        bundle.putCharSequence(d(3), this.albumArtist);
        bundle.putCharSequence(d(4), this.displayTitle);
        bundle.putCharSequence(d(5), this.subtitle);
        bundle.putCharSequence(d(6), this.description);
        bundle.putByteArray(d(10), this.artworkData);
        bundle.putParcelable(d(11), this.artworkUri);
        bundle.putCharSequence(d(22), this.writer);
        bundle.putCharSequence(d(23), this.composer);
        bundle.putCharSequence(d(24), this.conductor);
        bundle.putCharSequence(d(27), this.genre);
        bundle.putCharSequence(d(28), this.compilation);
        bundle.putCharSequence(d(30), this.station);
        if (this.userRating != null) {
            bundle.putBundle(d(8), this.userRating.toBundle());
        }
        if (this.overallRating != null) {
            bundle.putBundle(d(9), this.overallRating.toBundle());
        }
        if (this.trackNumber != null) {
            bundle.putInt(d(12), this.trackNumber.intValue());
        }
        if (this.totalTrackCount != null) {
            bundle.putInt(d(13), this.totalTrackCount.intValue());
        }
        if (this.folderType != null) {
            bundle.putInt(d(14), this.folderType.intValue());
        }
        if (this.isPlayable != null) {
            bundle.putBoolean(d(15), this.isPlayable.booleanValue());
        }
        if (this.recordingYear != null) {
            bundle.putInt(d(16), this.recordingYear.intValue());
        }
        if (this.recordingMonth != null) {
            bundle.putInt(d(17), this.recordingMonth.intValue());
        }
        if (this.recordingDay != null) {
            bundle.putInt(d(18), this.recordingDay.intValue());
        }
        if (this.releaseYear != null) {
            bundle.putInt(d(19), this.releaseYear.intValue());
        }
        if (this.releaseMonth != null) {
            bundle.putInt(d(20), this.releaseMonth.intValue());
        }
        if (this.releaseDay != null) {
            bundle.putInt(d(21), this.releaseDay.intValue());
        }
        if (this.discNumber != null) {
            bundle.putInt(d(25), this.discNumber.intValue());
        }
        if (this.totalDiscCount != null) {
            bundle.putInt(d(26), this.totalDiscCount.intValue());
        }
        if (this.artworkDataType != null) {
            bundle.putInt(d(29), this.artworkDataType.intValue());
        }
        if (this.extras != null) {
            bundle.putBundle(d(1000), this.extras);
        }
        return bundle;
    }
}
