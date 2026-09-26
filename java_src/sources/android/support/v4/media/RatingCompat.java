package android.support.v4.media;

import android.annotation.SuppressLint;
import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
@SuppressLint({"BanParcelableUsage"})
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    class a implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int i10) {
            return new RatingCompat[i10];
        }

        a() {
        }
    }

    public static RatingCompat a(Object obj) {
        RatingCompat ratingCompatI = null;
        if (obj != null) {
            Rating rating = (Rating) obj;
            int iB = b.b(rating);
            if (b.e(rating)) {
                switch (iB) {
                    case 1:
                        ratingCompatI = c(b.d(rating));
                        break;
                    case 2:
                        ratingCompatI = h(b.f(rating));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatI = g(iB, b.c(rating));
                        break;
                    case 6:
                        ratingCompatI = e(b.a(rating));
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatI = i(iB);
            }
            ratingCompatI.mRatingObj = obj;
        }
        return ratingCompatI;
    }

    public static RatingCompat e(float f) {
        if (f >= 0.0f && f <= 100.0f) {
            return new RatingCompat(6, f);
        }
        Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public static RatingCompat g(int i10, float f) {
        float f6;
        if (i10 == 3) {
            f6 = 3.0f;
        } else if (i10 == 4) {
            f6 = 4.0f;
        } else {
            if (i10 != 5) {
                Log.e(TAG, "Invalid rating style (" + i10 + ") for a star rating");
                return null;
            }
            f6 = 5.0f;
        }
        if (f >= 0.0f && f <= f6) {
            return new RatingCompat(i10, f);
        }
        Log.e(TAG, "Trying to set out of range star-based rating");
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mRatingStyle;
    }

    @RequiresApi
    private static class b {
        @DoNotInline
        static float a(Rating rating) {
            return rating.getPercentRating();
        }

        @DoNotInline
        static int b(Rating rating) {
            return rating.getRatingStyle();
        }

        @DoNotInline
        static float c(Rating rating) {
            return rating.getStarRating();
        }

        @DoNotInline
        static boolean d(Rating rating) {
            return rating.hasHeart();
        }

        @DoNotInline
        static boolean e(Rating rating) {
            return rating.isRated();
        }

        @DoNotInline
        static boolean f(Rating rating) {
            return rating.isThumbUp();
        }

        @DoNotInline
        static Rating g(boolean z6) {
            return Rating.newHeartRating(z6);
        }

        @DoNotInline
        static Rating h(float f) {
            return Rating.newPercentageRating(f);
        }

        @DoNotInline
        static Rating i(int i10, float f) {
            return Rating.newStarRating(i10, f);
        }

        @DoNotInline
        static Rating j(boolean z6) {
            return Rating.newThumbRating(z6);
        }

        @DoNotInline
        static Rating k(int i10) {
            return Rating.newUnratedRating(i10);
        }
    }

    public static RatingCompat c(boolean z6) {
        return new RatingCompat(1, z6 ? 1.0f : 0.0f);
    }

    public static RatingCompat h(boolean z6) {
        return new RatingCompat(2, z6 ? 1.0f : 0.0f);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.mRatingStyle);
        sb.append(" rating=");
        float f = this.mRatingValue;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }

    RatingCompat(int i10, float f) {
        this.mRatingStyle = i10;
        this.mRatingValue = f;
    }

    public static RatingCompat i(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i10, RATING_NOT_RATED);
            default:
                return null;
        }
    }
}
