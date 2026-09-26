package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import com.google.android.material.internal.s;
import d3.d;
import d3.i;
import d3.j;
import d3.k;
import d3.l;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public final class BadgeState {
    private static final String BADGE_RESOURCE_TAG = "badge";
    private static final int DEFAULT_MAX_BADGE_CHARACTER_COUNT = 4;
    final float badgeRadius;
    final float badgeWidePadding;
    final float badgeWithTextRadius;
    private final State currentState;
    private final State overridingState;

    public static final class State implements Parcelable {
        private static final int BADGE_NUMBER_NONE = -1;
        public static final Parcelable.Creator<State> CREATOR = new a();
        private static final int NOT_SET = -2;

        @Dimension
        private Integer additionalHorizontalOffset;

        @Dimension
        private Integer additionalVerticalOffset;
        private int alpha;

        @ColorInt
        private Integer backgroundColor;
        private Integer badgeGravity;

        @XmlRes
        private int badgeResId;

        @ColorInt
        private Integer badgeTextColor;

        @StringRes
        private int contentDescriptionExceedsMaxBadgeNumberRes;

        @Nullable
        private CharSequence contentDescriptionNumberless;

        @PluralsRes
        private int contentDescriptionQuantityStrings;

        @Dimension
        private Integer horizontalOffsetWithText;

        @Dimension
        private Integer horizontalOffsetWithoutText;
        private Boolean isVisible;
        private int maxCharacterCount;
        private int number;
        private Locale numberLocale;

        @Dimension
        private Integer verticalOffsetWithText;

        @Dimension
        private Integer verticalOffsetWithoutText;

        class a implements Parcelable.Creator<State> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State createFromParcel(@NonNull Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public State[] newArray(int i10) {
                return new State[i10];
            }

            a() {
            }
        }

        public State() {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.isVisible = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        State(@NonNull Parcel parcel) {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.isVisible = Boolean.TRUE;
            this.badgeResId = parcel.readInt();
            this.backgroundColor = (Integer) parcel.readSerializable();
            this.badgeTextColor = (Integer) parcel.readSerializable();
            this.alpha = parcel.readInt();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithText = (Integer) parcel.readSerializable();
            this.additionalHorizontalOffset = (Integer) parcel.readSerializable();
            this.additionalVerticalOffset = (Integer) parcel.readSerializable();
            this.isVisible = (Boolean) parcel.readSerializable();
            this.numberLocale = (Locale) parcel.readSerializable();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeInt(this.badgeResId);
            parcel.writeSerializable(this.backgroundColor);
            parcel.writeSerializable(this.badgeTextColor);
            parcel.writeInt(this.alpha);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            CharSequence charSequence = this.contentDescriptionNumberless;
            parcel.writeString(charSequence == null ? null : charSequence.toString());
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeSerializable(this.badgeGravity);
            parcel.writeSerializable(this.horizontalOffsetWithoutText);
            parcel.writeSerializable(this.verticalOffsetWithoutText);
            parcel.writeSerializable(this.horizontalOffsetWithText);
            parcel.writeSerializable(this.verticalOffsetWithText);
            parcel.writeSerializable(this.additionalHorizontalOffset);
            parcel.writeSerializable(this.additionalVerticalOffset);
            parcel.writeSerializable(this.isVisible);
            parcel.writeSerializable(this.numberLocale);
        }
    }

    private TypedArray a(Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12) {
        AttributeSet attributeSet;
        int styleAttribute;
        if (i10 != 0) {
            AttributeSet attributeSetA = k3.a.a(context, i10, BADGE_RESOURCE_TAG);
            styleAttribute = attributeSetA.getStyleAttribute();
            attributeSet = attributeSetA;
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        return s.h(context, attributeSet, l.Badge, i11, styleAttribute == 0 ? i12 : styleAttribute, new int[0]);
    }

    State p() {
        return this.overridingState;
    }

    @Dimension
    int b() {
        return this.currentState.additionalHorizontalOffset.intValue();
    }

    @Dimension
    int c() {
        return this.currentState.additionalVerticalOffset.intValue();
    }

    int d() {
        return this.currentState.alpha;
    }

    @ColorInt
    int e() {
        return this.currentState.backgroundColor.intValue();
    }

    int f() {
        return this.currentState.badgeGravity.intValue();
    }

    @ColorInt
    int g() {
        return this.currentState.badgeTextColor.intValue();
    }

    @StringRes
    int h() {
        return this.currentState.contentDescriptionExceedsMaxBadgeNumberRes;
    }

    CharSequence i() {
        return this.currentState.contentDescriptionNumberless;
    }

    @PluralsRes
    int j() {
        return this.currentState.contentDescriptionQuantityStrings;
    }

    @Dimension
    int k() {
        return this.currentState.horizontalOffsetWithText.intValue();
    }

    @Dimension
    int l() {
        return this.currentState.horizontalOffsetWithoutText.intValue();
    }

    int m() {
        return this.currentState.maxCharacterCount;
    }

    int n() {
        return this.currentState.number;
    }

    Locale o() {
        return this.currentState.numberLocale;
    }

    @Dimension
    int q() {
        return this.currentState.verticalOffsetWithText.intValue();
    }

    @Dimension
    int r() {
        return this.currentState.verticalOffsetWithoutText.intValue();
    }

    boolean s() {
        return this.currentState.number != -1;
    }

    boolean t() {
        return this.currentState.isVisible.booleanValue();
    }

    void v(int i10) {
        this.overridingState.alpha = i10;
        this.currentState.alpha = i10;
    }

    BadgeState(Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12, @Nullable State state) {
        int i13;
        CharSequence string;
        int i14;
        int i15;
        boolean z6;
        int i16;
        int iIntValue;
        int iIntValue2;
        int iIntValue3;
        int iIntValue4;
        int iIntValue5;
        int iIntValue6;
        int iIntValue7;
        Locale locale;
        State state2 = new State();
        this.currentState = state2;
        state = state == null ? new State() : state;
        if (i10 != 0) {
            state.badgeResId = i10;
        }
        TypedArray typedArrayA = a(context, state.badgeResId, i11, i12);
        Resources resources = context.getResources();
        this.badgeRadius = typedArrayA.getDimensionPixelSize(l.Badge_badgeRadius, resources.getDimensionPixelSize(d.mtrl_badge_radius));
        this.badgeWidePadding = typedArrayA.getDimensionPixelSize(l.Badge_badgeWidePadding, resources.getDimensionPixelSize(d.mtrl_badge_long_text_horizontal_padding));
        this.badgeWithTextRadius = typedArrayA.getDimensionPixelSize(l.Badge_badgeWithTextRadius, resources.getDimensionPixelSize(d.mtrl_badge_with_text_radius));
        if (state.alpha != -2) {
            i13 = state.alpha;
        } else {
            i13 = 255;
        }
        state2.alpha = i13;
        if (state.contentDescriptionNumberless != null) {
            string = state.contentDescriptionNumberless;
        } else {
            string = context.getString(j.mtrl_badge_numberless_content_description);
        }
        state2.contentDescriptionNumberless = string;
        if (state.contentDescriptionQuantityStrings != 0) {
            i14 = state.contentDescriptionQuantityStrings;
        } else {
            i14 = i.mtrl_badge_content_description;
        }
        state2.contentDescriptionQuantityStrings = i14;
        if (state.contentDescriptionExceedsMaxBadgeNumberRes != 0) {
            i15 = state.contentDescriptionExceedsMaxBadgeNumberRes;
        } else {
            i15 = j.mtrl_exceed_max_badge_number_content_description;
        }
        state2.contentDescriptionExceedsMaxBadgeNumberRes = i15;
        if (state.isVisible != null && !state.isVisible.booleanValue()) {
            z6 = false;
        } else {
            z6 = true;
        }
        state2.isVisible = Boolean.valueOf(z6);
        if (state.maxCharacterCount != -2) {
            i16 = state.maxCharacterCount;
        } else {
            i16 = typedArrayA.getInt(l.Badge_maxCharacterCount, 4);
        }
        state2.maxCharacterCount = i16;
        if (state.number != -2) {
            state2.number = state.number;
        } else {
            int i17 = l.Badge_number;
            if (typedArrayA.hasValue(i17)) {
                state2.number = typedArrayA.getInt(i17, 0);
            } else {
                state2.number = -1;
            }
        }
        if (state.backgroundColor == null) {
            iIntValue = u(context, typedArrayA, l.Badge_backgroundColor);
        } else {
            iIntValue = state.backgroundColor.intValue();
        }
        state2.backgroundColor = Integer.valueOf(iIntValue);
        if (state.badgeTextColor != null) {
            state2.badgeTextColor = state.badgeTextColor;
        } else {
            int i18 = l.Badge_badgeTextColor;
            if (typedArrayA.hasValue(i18)) {
                state2.badgeTextColor = Integer.valueOf(u(context, typedArrayA, i18));
            } else {
                state2.badgeTextColor = Integer.valueOf(new com.google.android.material.resources.d(context, k.TextAppearance_MaterialComponents_Badge).i().getDefaultColor());
            }
        }
        if (state.badgeGravity == null) {
            iIntValue2 = typedArrayA.getInt(l.Badge_badgeGravity, 8388661);
        } else {
            iIntValue2 = state.badgeGravity.intValue();
        }
        state2.badgeGravity = Integer.valueOf(iIntValue2);
        if (state.horizontalOffsetWithoutText == null) {
            iIntValue3 = typedArrayA.getDimensionPixelOffset(l.Badge_horizontalOffset, 0);
        } else {
            iIntValue3 = state.horizontalOffsetWithoutText.intValue();
        }
        state2.horizontalOffsetWithoutText = Integer.valueOf(iIntValue3);
        if (state.horizontalOffsetWithoutText == null) {
            iIntValue4 = typedArrayA.getDimensionPixelOffset(l.Badge_verticalOffset, 0);
        } else {
            iIntValue4 = state.verticalOffsetWithoutText.intValue();
        }
        state2.verticalOffsetWithoutText = Integer.valueOf(iIntValue4);
        if (state.horizontalOffsetWithText == null) {
            iIntValue5 = typedArrayA.getDimensionPixelOffset(l.Badge_horizontalOffsetWithText, state2.horizontalOffsetWithoutText.intValue());
        } else {
            iIntValue5 = state.horizontalOffsetWithText.intValue();
        }
        state2.horizontalOffsetWithText = Integer.valueOf(iIntValue5);
        if (state.verticalOffsetWithText == null) {
            iIntValue6 = typedArrayA.getDimensionPixelOffset(l.Badge_verticalOffsetWithText, state2.verticalOffsetWithoutText.intValue());
        } else {
            iIntValue6 = state.verticalOffsetWithText.intValue();
        }
        state2.verticalOffsetWithText = Integer.valueOf(iIntValue6);
        if (state.additionalHorizontalOffset == null) {
            iIntValue7 = 0;
        } else {
            iIntValue7 = state.additionalHorizontalOffset.intValue();
        }
        state2.additionalHorizontalOffset = Integer.valueOf(iIntValue7);
        state2.additionalVerticalOffset = Integer.valueOf(state.additionalVerticalOffset != null ? state.additionalVerticalOffset.intValue() : 0);
        typedArrayA.recycle();
        if (state.numberLocale != null) {
            state2.numberLocale = state.numberLocale;
        } else {
            if (Build.VERSION.SDK_INT >= 24) {
                locale = Locale.getDefault(Locale.Category.FORMAT);
            } else {
                locale = Locale.getDefault();
            }
            state2.numberLocale = locale;
        }
        this.overridingState = state;
    }

    private static int u(Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        return com.google.android.material.resources.c.a(context, typedArray, i10).getDefaultColor();
    }
}
