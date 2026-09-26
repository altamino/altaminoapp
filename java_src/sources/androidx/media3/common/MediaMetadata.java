package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMetadata implements Bundleable {

    @Deprecated
    public static final int FOLDER_TYPE_ALBUMS = 2;

    @Deprecated
    public static final int FOLDER_TYPE_ARTISTS = 3;

    @Deprecated
    public static final int FOLDER_TYPE_GENRES = 4;

    @Deprecated
    public static final int FOLDER_TYPE_MIXED = 0;

    @Deprecated
    public static final int FOLDER_TYPE_NONE = -1;

    @Deprecated
    public static final int FOLDER_TYPE_PLAYLISTS = 5;

    @Deprecated
    public static final int FOLDER_TYPE_TITLES = 1;

    @Deprecated
    public static final int FOLDER_TYPE_YEARS = 6;
    public static final int MEDIA_TYPE_ALBUM = 10;
    public static final int MEDIA_TYPE_ARTIST = 11;
    public static final int MEDIA_TYPE_AUDIO_BOOK = 15;
    public static final int MEDIA_TYPE_AUDIO_BOOK_CHAPTER = 2;
    public static final int MEDIA_TYPE_FOLDER_ALBUMS = 21;
    public static final int MEDIA_TYPE_FOLDER_ARTISTS = 22;
    public static final int MEDIA_TYPE_FOLDER_AUDIO_BOOKS = 26;
    public static final int MEDIA_TYPE_FOLDER_GENRES = 23;
    public static final int MEDIA_TYPE_FOLDER_MIXED = 20;
    public static final int MEDIA_TYPE_FOLDER_MOVIES = 35;
    public static final int MEDIA_TYPE_FOLDER_NEWS = 32;
    public static final int MEDIA_TYPE_FOLDER_PLAYLISTS = 24;
    public static final int MEDIA_TYPE_FOLDER_PODCASTS = 27;
    public static final int MEDIA_TYPE_FOLDER_RADIO_STATIONS = 31;
    public static final int MEDIA_TYPE_FOLDER_TRAILERS = 34;
    public static final int MEDIA_TYPE_FOLDER_TV_CHANNELS = 28;
    public static final int MEDIA_TYPE_FOLDER_TV_SERIES = 29;
    public static final int MEDIA_TYPE_FOLDER_TV_SHOWS = 30;
    public static final int MEDIA_TYPE_FOLDER_VIDEOS = 33;
    public static final int MEDIA_TYPE_FOLDER_YEARS = 25;
    public static final int MEDIA_TYPE_GENRE = 12;
    public static final int MEDIA_TYPE_MIXED = 0;
    public static final int MEDIA_TYPE_MOVIE = 8;
    public static final int MEDIA_TYPE_MUSIC = 1;
    public static final int MEDIA_TYPE_NEWS = 5;
    public static final int MEDIA_TYPE_PLAYLIST = 13;
    public static final int MEDIA_TYPE_PODCAST = 16;
    public static final int MEDIA_TYPE_PODCAST_EPISODE = 3;
    public static final int MEDIA_TYPE_RADIO_STATION = 4;
    public static final int MEDIA_TYPE_TRAILER = 7;
    public static final int MEDIA_TYPE_TV_CHANNEL = 17;
    public static final int MEDIA_TYPE_TV_SEASON = 19;
    public static final int MEDIA_TYPE_TV_SERIES = 18;
    public static final int MEDIA_TYPE_TV_SHOW = 9;
    public static final int MEDIA_TYPE_VIDEO = 6;
    public static final int MEDIA_TYPE_YEAR = 14;
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
    @Deprecated
    public final Integer folderType;

    @Nullable
    public final CharSequence genre;

    @Nullable
    public final Boolean isBrowsable;

    @Nullable
    public final Boolean isPlayable;

    @Nullable
    public final Integer mediaType;

    @Nullable
    public final Rating overallRating;

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
    public final Rating userRating;

    @Nullable
    public final CharSequence writer;

    @Nullable
    @UnstableApi
    @Deprecated
    public final Integer year;
    public static final MediaMetadata EMPTY = new Builder().H();
    private static final String FIELD_TITLE = Util.z0(0);
    private static final String FIELD_ARTIST = Util.z0(1);
    private static final String FIELD_ALBUM_TITLE = Util.z0(2);
    private static final String FIELD_ALBUM_ARTIST = Util.z0(3);
    private static final String FIELD_DISPLAY_TITLE = Util.z0(4);
    private static final String FIELD_SUBTITLE = Util.z0(5);
    private static final String FIELD_DESCRIPTION = Util.z0(6);
    private static final String FIELD_USER_RATING = Util.z0(8);
    private static final String FIELD_OVERALL_RATING = Util.z0(9);
    private static final String FIELD_ARTWORK_DATA = Util.z0(10);
    private static final String FIELD_ARTWORK_URI = Util.z0(11);
    private static final String FIELD_TRACK_NUMBER = Util.z0(12);
    private static final String FIELD_TOTAL_TRACK_COUNT = Util.z0(13);
    private static final String FIELD_FOLDER_TYPE = Util.z0(14);
    private static final String FIELD_IS_PLAYABLE = Util.z0(15);
    private static final String FIELD_RECORDING_YEAR = Util.z0(16);
    private static final String FIELD_RECORDING_MONTH = Util.z0(17);
    private static final String FIELD_RECORDING_DAY = Util.z0(18);
    private static final String FIELD_RELEASE_YEAR = Util.z0(19);
    private static final String FIELD_RELEASE_MONTH = Util.z0(20);
    private static final String FIELD_RELEASE_DAY = Util.z0(21);
    private static final String FIELD_WRITER = Util.z0(22);
    private static final String FIELD_COMPOSER = Util.z0(23);
    private static final String FIELD_CONDUCTOR = Util.z0(24);
    private static final String FIELD_DISC_NUMBER = Util.z0(25);
    private static final String FIELD_TOTAL_DISC_COUNT = Util.z0(26);
    private static final String FIELD_GENRE = Util.z0(27);
    private static final String FIELD_COMPILATION = Util.z0(28);
    private static final String FIELD_ARTWORK_DATA_TYPE = Util.z0(29);
    private static final String FIELD_STATION = Util.z0(30);
    private static final String FIELD_MEDIA_TYPE = Util.z0(31);
    private static final String FIELD_IS_BROWSABLE = Util.z0(32);
    private static final String FIELD_EXTRAS = Util.z0(1000);

    @UnstableApi
    public static final Bundleable.Creator<MediaMetadata> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.w
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return MediaMetadata.c(bundle);
        }
    };

    public static final class Builder {

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
        private Boolean isBrowsable;

        @Nullable
        private Boolean isPlayable;

        @Nullable
        private Integer mediaType;

        @Nullable
        private Rating overallRating;

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
        private Rating userRating;

        @Nullable
        private CharSequence writer;

        @UnstableApi
        public Builder K(Metadata metadata) {
            for (int i10 = 0; i10 < metadata.h(); i10++) {
                metadata.g(i10).k0(this);
            }
            return this;
        }

        @UnstableApi
        public Builder L(List<Metadata> list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                Metadata metadata = list.get(i10);
                for (int i11 = 0; i11 < metadata.h(); i11++) {
                    metadata.g(i11).k0(this);
                }
            }
            return this;
        }

        public Builder M(@Nullable CharSequence charSequence) {
            this.albumArtist = charSequence;
            return this;
        }

        public Builder N(@Nullable CharSequence charSequence) {
            this.albumTitle = charSequence;
            return this;
        }

        public Builder O(@Nullable CharSequence charSequence) {
            this.artist = charSequence;
            return this;
        }

        public Builder Q(@Nullable Uri uri) {
            this.artworkUri = uri;
            return this;
        }

        public Builder R(@Nullable CharSequence charSequence) {
            this.compilation = charSequence;
            return this;
        }

        public Builder S(@Nullable CharSequence charSequence) {
            this.composer = charSequence;
            return this;
        }

        public Builder T(@Nullable CharSequence charSequence) {
            this.conductor = charSequence;
            return this;
        }

        public Builder U(@Nullable CharSequence charSequence) {
            this.description = charSequence;
            return this;
        }

        public Builder V(@Nullable Integer num) {
            this.discNumber = num;
            return this;
        }

        public Builder W(@Nullable CharSequence charSequence) {
            this.displayTitle = charSequence;
            return this;
        }

        public Builder X(@Nullable Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        @Deprecated
        public Builder Y(@Nullable Integer num) {
            this.folderType = num;
            return this;
        }

        public Builder Z(@Nullable CharSequence charSequence) {
            this.genre = charSequence;
            return this;
        }

        public Builder a0(@Nullable Boolean bool) {
            this.isBrowsable = bool;
            return this;
        }

        public Builder b0(@Nullable Boolean bool) {
            this.isPlayable = bool;
            return this;
        }

        public Builder c0(@Nullable Integer num) {
            this.mediaType = num;
            return this;
        }

        public Builder d0(@Nullable Rating rating) {
            this.overallRating = rating;
            return this;
        }

        public Builder e0(@IntRange @Nullable Integer num) {
            this.recordingDay = num;
            return this;
        }

        public Builder f0(@IntRange @Nullable Integer num) {
            this.recordingMonth = num;
            return this;
        }

        public Builder g0(@Nullable Integer num) {
            this.recordingYear = num;
            return this;
        }

        public Builder h0(@IntRange @Nullable Integer num) {
            this.releaseDay = num;
            return this;
        }

        public Builder i0(@IntRange @Nullable Integer num) {
            this.releaseMonth = num;
            return this;
        }

        public Builder j0(@Nullable Integer num) {
            this.releaseYear = num;
            return this;
        }

        public Builder k0(@Nullable CharSequence charSequence) {
            this.station = charSequence;
            return this;
        }

        public Builder l0(@Nullable CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }

        public Builder m0(@Nullable CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }

        public Builder n0(@Nullable Integer num) {
            this.totalDiscCount = num;
            return this;
        }

        public Builder o0(@Nullable Integer num) {
            this.totalTrackCount = num;
            return this;
        }

        public Builder p0(@Nullable Integer num) {
            this.trackNumber = num;
            return this;
        }

        public Builder q0(@Nullable Rating rating) {
            this.userRating = rating;
            return this;
        }

        public Builder r0(@Nullable CharSequence charSequence) {
            this.writer = charSequence;
            return this;
        }

        public Builder() {
        }

        public MediaMetadata H() {
            return new MediaMetadata(this);
        }

        public Builder I(byte[] bArr, int i10) {
            if (this.artworkData == null || Util.c(Integer.valueOf(i10), 3) || !Util.c(this.artworkDataType, 3)) {
                this.artworkData = (byte[]) bArr.clone();
                this.artworkDataType = Integer.valueOf(i10);
            }
            return this;
        }

        @UnstableApi
        public Builder J(@Nullable MediaMetadata mediaMetadata) {
            if (mediaMetadata == null) {
                return this;
            }
            CharSequence charSequence = mediaMetadata.title;
            if (charSequence != null) {
                m0(charSequence);
            }
            CharSequence charSequence2 = mediaMetadata.artist;
            if (charSequence2 != null) {
                O(charSequence2);
            }
            CharSequence charSequence3 = mediaMetadata.albumTitle;
            if (charSequence3 != null) {
                N(charSequence3);
            }
            CharSequence charSequence4 = mediaMetadata.albumArtist;
            if (charSequence4 != null) {
                M(charSequence4);
            }
            CharSequence charSequence5 = mediaMetadata.displayTitle;
            if (charSequence5 != null) {
                W(charSequence5);
            }
            CharSequence charSequence6 = mediaMetadata.subtitle;
            if (charSequence6 != null) {
                l0(charSequence6);
            }
            CharSequence charSequence7 = mediaMetadata.description;
            if (charSequence7 != null) {
                U(charSequence7);
            }
            Rating rating = mediaMetadata.userRating;
            if (rating != null) {
                q0(rating);
            }
            Rating rating2 = mediaMetadata.overallRating;
            if (rating2 != null) {
                d0(rating2);
            }
            byte[] bArr = mediaMetadata.artworkData;
            if (bArr != null) {
                P(bArr, mediaMetadata.artworkDataType);
            }
            Uri uri = mediaMetadata.artworkUri;
            if (uri != null) {
                Q(uri);
            }
            Integer num = mediaMetadata.trackNumber;
            if (num != null) {
                p0(num);
            }
            Integer num2 = mediaMetadata.totalTrackCount;
            if (num2 != null) {
                o0(num2);
            }
            Integer num3 = mediaMetadata.folderType;
            if (num3 != null) {
                Y(num3);
            }
            Boolean bool = mediaMetadata.isBrowsable;
            if (bool != null) {
                a0(bool);
            }
            Boolean bool2 = mediaMetadata.isPlayable;
            if (bool2 != null) {
                b0(bool2);
            }
            Integer num4 = mediaMetadata.year;
            if (num4 != null) {
                g0(num4);
            }
            Integer num5 = mediaMetadata.recordingYear;
            if (num5 != null) {
                g0(num5);
            }
            Integer num6 = mediaMetadata.recordingMonth;
            if (num6 != null) {
                f0(num6);
            }
            Integer num7 = mediaMetadata.recordingDay;
            if (num7 != null) {
                e0(num7);
            }
            Integer num8 = mediaMetadata.releaseYear;
            if (num8 != null) {
                j0(num8);
            }
            Integer num9 = mediaMetadata.releaseMonth;
            if (num9 != null) {
                i0(num9);
            }
            Integer num10 = mediaMetadata.releaseDay;
            if (num10 != null) {
                h0(num10);
            }
            CharSequence charSequence8 = mediaMetadata.writer;
            if (charSequence8 != null) {
                r0(charSequence8);
            }
            CharSequence charSequence9 = mediaMetadata.composer;
            if (charSequence9 != null) {
                S(charSequence9);
            }
            CharSequence charSequence10 = mediaMetadata.conductor;
            if (charSequence10 != null) {
                T(charSequence10);
            }
            Integer num11 = mediaMetadata.discNumber;
            if (num11 != null) {
                V(num11);
            }
            Integer num12 = mediaMetadata.totalDiscCount;
            if (num12 != null) {
                n0(num12);
            }
            CharSequence charSequence11 = mediaMetadata.genre;
            if (charSequence11 != null) {
                Z(charSequence11);
            }
            CharSequence charSequence12 = mediaMetadata.compilation;
            if (charSequence12 != null) {
                R(charSequence12);
            }
            CharSequence charSequence13 = mediaMetadata.station;
            if (charSequence13 != null) {
                k0(charSequence13);
            }
            Integer num13 = mediaMetadata.mediaType;
            if (num13 != null) {
                c0(num13);
            }
            Bundle bundle = mediaMetadata.extras;
            if (bundle != null) {
                X(bundle);
            }
            return this;
        }

        public Builder P(@Nullable byte[] bArr, @Nullable Integer num) {
            this.artworkData = bArr == null ? null : (byte[]) bArr.clone();
            this.artworkDataType = num;
            return this;
        }

        private Builder(MediaMetadata mediaMetadata) {
            this.title = mediaMetadata.title;
            this.artist = mediaMetadata.artist;
            this.albumTitle = mediaMetadata.albumTitle;
            this.albumArtist = mediaMetadata.albumArtist;
            this.displayTitle = mediaMetadata.displayTitle;
            this.subtitle = mediaMetadata.subtitle;
            this.description = mediaMetadata.description;
            this.userRating = mediaMetadata.userRating;
            this.overallRating = mediaMetadata.overallRating;
            this.artworkData = mediaMetadata.artworkData;
            this.artworkDataType = mediaMetadata.artworkDataType;
            this.artworkUri = mediaMetadata.artworkUri;
            this.trackNumber = mediaMetadata.trackNumber;
            this.totalTrackCount = mediaMetadata.totalTrackCount;
            this.folderType = mediaMetadata.folderType;
            this.isBrowsable = mediaMetadata.isBrowsable;
            this.isPlayable = mediaMetadata.isPlayable;
            this.recordingYear = mediaMetadata.recordingYear;
            this.recordingMonth = mediaMetadata.recordingMonth;
            this.recordingDay = mediaMetadata.recordingDay;
            this.releaseYear = mediaMetadata.releaseYear;
            this.releaseMonth = mediaMetadata.releaseMonth;
            this.releaseDay = mediaMetadata.releaseDay;
            this.writer = mediaMetadata.writer;
            this.composer = mediaMetadata.composer;
            this.conductor = mediaMetadata.conductor;
            this.discNumber = mediaMetadata.discNumber;
            this.totalDiscCount = mediaMetadata.totalDiscCount;
            this.genre = mediaMetadata.genre;
            this.compilation = mediaMetadata.compilation;
            this.station = mediaMetadata.station;
            this.mediaType = mediaMetadata.mediaType;
            this.extras = mediaMetadata.extras;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Deprecated
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FolderType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PictureType {
    }

    private static int d(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
                return 1;
            case 20:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            default:
                return 0;
            case 21:
                return 2;
            case 22:
                return 3;
            case 23:
                return 4;
            case 24:
                return 5;
            case 25:
                return 6;
        }
    }

    private static int e(int i10) {
        switch (i10) {
            case 1:
                return 0;
            case 2:
                return 21;
            case 3:
                return 22;
            case 4:
                return 23;
            case 5:
                return 24;
            case 6:
                return 25;
            default:
                return 20;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MediaMetadata.class != obj.getClass()) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return Util.c(this.title, mediaMetadata.title) && Util.c(this.artist, mediaMetadata.artist) && Util.c(this.albumTitle, mediaMetadata.albumTitle) && Util.c(this.albumArtist, mediaMetadata.albumArtist) && Util.c(this.displayTitle, mediaMetadata.displayTitle) && Util.c(this.subtitle, mediaMetadata.subtitle) && Util.c(this.description, mediaMetadata.description) && Util.c(this.userRating, mediaMetadata.userRating) && Util.c(this.overallRating, mediaMetadata.overallRating) && Arrays.equals(this.artworkData, mediaMetadata.artworkData) && Util.c(this.artworkDataType, mediaMetadata.artworkDataType) && Util.c(this.artworkUri, mediaMetadata.artworkUri) && Util.c(this.trackNumber, mediaMetadata.trackNumber) && Util.c(this.totalTrackCount, mediaMetadata.totalTrackCount) && Util.c(this.folderType, mediaMetadata.folderType) && Util.c(this.isBrowsable, mediaMetadata.isBrowsable) && Util.c(this.isPlayable, mediaMetadata.isPlayable) && Util.c(this.recordingYear, mediaMetadata.recordingYear) && Util.c(this.recordingMonth, mediaMetadata.recordingMonth) && Util.c(this.recordingDay, mediaMetadata.recordingDay) && Util.c(this.releaseYear, mediaMetadata.releaseYear) && Util.c(this.releaseMonth, mediaMetadata.releaseMonth) && Util.c(this.releaseDay, mediaMetadata.releaseDay) && Util.c(this.writer, mediaMetadata.writer) && Util.c(this.composer, mediaMetadata.composer) && Util.c(this.conductor, mediaMetadata.conductor) && Util.c(this.discNumber, mediaMetadata.discNumber) && Util.c(this.totalDiscCount, mediaMetadata.totalDiscCount) && Util.c(this.genre, mediaMetadata.genre) && Util.c(this.compilation, mediaMetadata.compilation) && Util.c(this.station, mediaMetadata.station) && Util.c(this.mediaType, mediaMetadata.mediaType);
    }

    private MediaMetadata(Builder builder) {
        Boolean boolValueOf = builder.isBrowsable;
        Integer numValueOf = builder.folderType;
        Integer numValueOf2 = builder.mediaType;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                numValueOf = Integer.valueOf(numValueOf2 != null ? d(numValueOf2.intValue()) : 0);
            }
        } else if (numValueOf != null) {
            boolValueOf = Boolean.valueOf(numValueOf.intValue() != -1);
            if (boolValueOf.booleanValue() && numValueOf2 == null) {
                numValueOf2 = Integer.valueOf(e(numValueOf.intValue()));
            }
        }
        this.title = builder.title;
        this.artist = builder.artist;
        this.albumTitle = builder.albumTitle;
        this.albumArtist = builder.albumArtist;
        this.displayTitle = builder.displayTitle;
        this.subtitle = builder.subtitle;
        this.description = builder.description;
        this.userRating = builder.userRating;
        this.overallRating = builder.overallRating;
        this.artworkData = builder.artworkData;
        this.artworkDataType = builder.artworkDataType;
        this.artworkUri = builder.artworkUri;
        this.trackNumber = builder.trackNumber;
        this.totalTrackCount = builder.totalTrackCount;
        this.folderType = numValueOf;
        this.isBrowsable = boolValueOf;
        this.isPlayable = builder.isPlayable;
        this.year = builder.recordingYear;
        this.recordingYear = builder.recordingYear;
        this.recordingMonth = builder.recordingMonth;
        this.recordingDay = builder.recordingDay;
        this.releaseYear = builder.releaseYear;
        this.releaseMonth = builder.releaseMonth;
        this.releaseDay = builder.releaseDay;
        this.writer = builder.writer;
        this.composer = builder.composer;
        this.conductor = builder.conductor;
        this.discNumber = builder.discNumber;
        this.totalDiscCount = builder.totalDiscCount;
        this.genre = builder.genre;
        this.compilation = builder.compilation;
        this.station = builder.station;
        this.mediaType = numValueOf2;
        this.extras = builder.extras;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaMetadata c(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        Builder builder = new Builder();
        Builder builderU = builder.m0(bundle.getCharSequence(FIELD_TITLE)).O(bundle.getCharSequence(FIELD_ARTIST)).N(bundle.getCharSequence(FIELD_ALBUM_TITLE)).M(bundle.getCharSequence(FIELD_ALBUM_ARTIST)).W(bundle.getCharSequence(FIELD_DISPLAY_TITLE)).l0(bundle.getCharSequence(FIELD_SUBTITLE)).U(bundle.getCharSequence(FIELD_DESCRIPTION));
        byte[] byteArray = bundle.getByteArray(FIELD_ARTWORK_DATA);
        String str = FIELD_ARTWORK_DATA_TYPE;
        builderU.P(byteArray, bundle.containsKey(str) ? Integer.valueOf(bundle.getInt(str)) : null).Q((Uri) bundle.getParcelable(FIELD_ARTWORK_URI)).r0(bundle.getCharSequence(FIELD_WRITER)).S(bundle.getCharSequence(FIELD_COMPOSER)).T(bundle.getCharSequence(FIELD_CONDUCTOR)).Z(bundle.getCharSequence(FIELD_GENRE)).R(bundle.getCharSequence(FIELD_COMPILATION)).k0(bundle.getCharSequence(FIELD_STATION)).X(bundle.getBundle(FIELD_EXTRAS));
        String str2 = FIELD_USER_RATING;
        if (bundle.containsKey(str2) && (bundle3 = bundle.getBundle(str2)) != null) {
            builder.q0((Rating) Rating.CREATOR.a(bundle3));
        }
        String str3 = FIELD_OVERALL_RATING;
        if (bundle.containsKey(str3) && (bundle2 = bundle.getBundle(str3)) != null) {
            builder.d0((Rating) Rating.CREATOR.a(bundle2));
        }
        String str4 = FIELD_TRACK_NUMBER;
        if (bundle.containsKey(str4)) {
            builder.p0(Integer.valueOf(bundle.getInt(str4)));
        }
        String str5 = FIELD_TOTAL_TRACK_COUNT;
        if (bundle.containsKey(str5)) {
            builder.o0(Integer.valueOf(bundle.getInt(str5)));
        }
        String str6 = FIELD_FOLDER_TYPE;
        if (bundle.containsKey(str6)) {
            builder.Y(Integer.valueOf(bundle.getInt(str6)));
        }
        String str7 = FIELD_IS_BROWSABLE;
        if (bundle.containsKey(str7)) {
            builder.a0(Boolean.valueOf(bundle.getBoolean(str7)));
        }
        String str8 = FIELD_IS_PLAYABLE;
        if (bundle.containsKey(str8)) {
            builder.b0(Boolean.valueOf(bundle.getBoolean(str8)));
        }
        String str9 = FIELD_RECORDING_YEAR;
        if (bundle.containsKey(str9)) {
            builder.g0(Integer.valueOf(bundle.getInt(str9)));
        }
        String str10 = FIELD_RECORDING_MONTH;
        if (bundle.containsKey(str10)) {
            builder.f0(Integer.valueOf(bundle.getInt(str10)));
        }
        String str11 = FIELD_RECORDING_DAY;
        if (bundle.containsKey(str11)) {
            builder.e0(Integer.valueOf(bundle.getInt(str11)));
        }
        String str12 = FIELD_RELEASE_YEAR;
        if (bundle.containsKey(str12)) {
            builder.j0(Integer.valueOf(bundle.getInt(str12)));
        }
        String str13 = FIELD_RELEASE_MONTH;
        if (bundle.containsKey(str13)) {
            builder.i0(Integer.valueOf(bundle.getInt(str13)));
        }
        String str14 = FIELD_RELEASE_DAY;
        if (bundle.containsKey(str14)) {
            builder.h0(Integer.valueOf(bundle.getInt(str14)));
        }
        String str15 = FIELD_DISC_NUMBER;
        if (bundle.containsKey(str15)) {
            builder.V(Integer.valueOf(bundle.getInt(str15)));
        }
        String str16 = FIELD_TOTAL_DISC_COUNT;
        if (bundle.containsKey(str16)) {
            builder.n0(Integer.valueOf(bundle.getInt(str16)));
        }
        String str17 = FIELD_MEDIA_TYPE;
        if (bundle.containsKey(str17)) {
            builder.c0(Integer.valueOf(bundle.getInt(str17)));
        }
        return builder.H();
    }

    public Builder b() {
        return new Builder();
    }

    public int hashCode() {
        return com.google.common.base.k.b(this.title, this.artist, this.albumTitle, this.albumArtist, this.displayTitle, this.subtitle, this.description, this.userRating, this.overallRating, Integer.valueOf(Arrays.hashCode(this.artworkData)), this.artworkDataType, this.artworkUri, this.trackNumber, this.totalTrackCount, this.folderType, this.isBrowsable, this.isPlayable, this.recordingYear, this.recordingMonth, this.recordingDay, this.releaseYear, this.releaseMonth, this.releaseDay, this.writer, this.composer, this.conductor, this.discNumber, this.totalDiscCount, this.genre, this.compilation, this.station, this.mediaType);
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.title;
        if (charSequence != null) {
            bundle.putCharSequence(FIELD_TITLE, charSequence);
        }
        CharSequence charSequence2 = this.artist;
        if (charSequence2 != null) {
            bundle.putCharSequence(FIELD_ARTIST, charSequence2);
        }
        CharSequence charSequence3 = this.albumTitle;
        if (charSequence3 != null) {
            bundle.putCharSequence(FIELD_ALBUM_TITLE, charSequence3);
        }
        CharSequence charSequence4 = this.albumArtist;
        if (charSequence4 != null) {
            bundle.putCharSequence(FIELD_ALBUM_ARTIST, charSequence4);
        }
        CharSequence charSequence5 = this.displayTitle;
        if (charSequence5 != null) {
            bundle.putCharSequence(FIELD_DISPLAY_TITLE, charSequence5);
        }
        CharSequence charSequence6 = this.subtitle;
        if (charSequence6 != null) {
            bundle.putCharSequence(FIELD_SUBTITLE, charSequence6);
        }
        CharSequence charSequence7 = this.description;
        if (charSequence7 != null) {
            bundle.putCharSequence(FIELD_DESCRIPTION, charSequence7);
        }
        byte[] bArr = this.artworkData;
        if (bArr != null) {
            bundle.putByteArray(FIELD_ARTWORK_DATA, bArr);
        }
        Uri uri = this.artworkUri;
        if (uri != null) {
            bundle.putParcelable(FIELD_ARTWORK_URI, uri);
        }
        CharSequence charSequence8 = this.writer;
        if (charSequence8 != null) {
            bundle.putCharSequence(FIELD_WRITER, charSequence8);
        }
        CharSequence charSequence9 = this.composer;
        if (charSequence9 != null) {
            bundle.putCharSequence(FIELD_COMPOSER, charSequence9);
        }
        CharSequence charSequence10 = this.conductor;
        if (charSequence10 != null) {
            bundle.putCharSequence(FIELD_CONDUCTOR, charSequence10);
        }
        CharSequence charSequence11 = this.genre;
        if (charSequence11 != null) {
            bundle.putCharSequence(FIELD_GENRE, charSequence11);
        }
        CharSequence charSequence12 = this.compilation;
        if (charSequence12 != null) {
            bundle.putCharSequence(FIELD_COMPILATION, charSequence12);
        }
        CharSequence charSequence13 = this.station;
        if (charSequence13 != null) {
            bundle.putCharSequence(FIELD_STATION, charSequence13);
        }
        Rating rating = this.userRating;
        if (rating != null) {
            bundle.putBundle(FIELD_USER_RATING, rating.toBundle());
        }
        Rating rating2 = this.overallRating;
        if (rating2 != null) {
            bundle.putBundle(FIELD_OVERALL_RATING, rating2.toBundle());
        }
        Integer num = this.trackNumber;
        if (num != null) {
            bundle.putInt(FIELD_TRACK_NUMBER, num.intValue());
        }
        Integer num2 = this.totalTrackCount;
        if (num2 != null) {
            bundle.putInt(FIELD_TOTAL_TRACK_COUNT, num2.intValue());
        }
        Integer num3 = this.folderType;
        if (num3 != null) {
            bundle.putInt(FIELD_FOLDER_TYPE, num3.intValue());
        }
        Boolean bool = this.isBrowsable;
        if (bool != null) {
            bundle.putBoolean(FIELD_IS_BROWSABLE, bool.booleanValue());
        }
        Boolean bool2 = this.isPlayable;
        if (bool2 != null) {
            bundle.putBoolean(FIELD_IS_PLAYABLE, bool2.booleanValue());
        }
        Integer num4 = this.recordingYear;
        if (num4 != null) {
            bundle.putInt(FIELD_RECORDING_YEAR, num4.intValue());
        }
        Integer num5 = this.recordingMonth;
        if (num5 != null) {
            bundle.putInt(FIELD_RECORDING_MONTH, num5.intValue());
        }
        Integer num6 = this.recordingDay;
        if (num6 != null) {
            bundle.putInt(FIELD_RECORDING_DAY, num6.intValue());
        }
        Integer num7 = this.releaseYear;
        if (num7 != null) {
            bundle.putInt(FIELD_RELEASE_YEAR, num7.intValue());
        }
        Integer num8 = this.releaseMonth;
        if (num8 != null) {
            bundle.putInt(FIELD_RELEASE_MONTH, num8.intValue());
        }
        Integer num9 = this.releaseDay;
        if (num9 != null) {
            bundle.putInt(FIELD_RELEASE_DAY, num9.intValue());
        }
        Integer num10 = this.discNumber;
        if (num10 != null) {
            bundle.putInt(FIELD_DISC_NUMBER, num10.intValue());
        }
        Integer num11 = this.totalDiscCount;
        if (num11 != null) {
            bundle.putInt(FIELD_TOTAL_DISC_COUNT, num11.intValue());
        }
        Integer num12 = this.artworkDataType;
        if (num12 != null) {
            bundle.putInt(FIELD_ARTWORK_DATA_TYPE, num12.intValue());
        }
        Integer num13 = this.mediaType;
        if (num13 != null) {
            bundle.putInt(FIELD_MEDIA_TYPE, num13.intValue());
        }
        Bundle bundle2 = this.extras;
        if (bundle2 != null) {
            bundle.putBundle(FIELD_EXTRAS, bundle2);
        }
        return bundle;
    }
}
