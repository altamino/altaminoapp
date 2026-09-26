package com.narvii.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVThemeObserver;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.modulization.Module;
import com.narvii.util.Utils;
import com.narvii.util.ranking.RankingService;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class NicknameView extends ViewGroup implements NVThemeObserver {
    private static final HashMap<String, SparseIntArray> MEASURE_CACHE = new HashMap<>();
    protected boolean allowShowUnsubscribe;
    Drawable badgeDrawable;
    public float badgeScale;
    protected boolean hideInfluencerBadge;
    protected boolean hideMembershipBadge;
    protected boolean hideRankingBadge;
    public boolean hideRole;
    protected boolean hideVerifiedBadge;
    Drawable influencerBadge;
    boolean isDarkTheme;
    boolean isMe;
    boolean isMembership;
    public boolean isReverse;
    boolean isVerified;
    Drawable membershipDrawable;
    public boolean nameCenter;
    final TextView nameView;
    final Paint paint;
    RankingService rankingService;
    final RectF rectf;
    String role1;
    int role1Bg;
    String role2;
    int role2Bg;
    public float roleMarginRatio;
    public float rolePaddingRatio;
    public float roleRadiusRatio;
    public float roleScale;
    final boolean rtl;
    boolean setHideInfluencerBadge;
    boolean showAuthorViewBorder;
    final Paint strokePaint;
    ColorStateList textColor;
    Drawable unsubscribeDrawable;
    public boolean useBigBadge;
    Drawable verifiedDrawable;

    private boolean showMembershipBadge() {
        return this.isMembership && !this.hideMembershipBadge;
    }

    private boolean showUnsubscribeBadge() {
        return !this.isMembership && this.isMe && this.allowShowUnsubscribe;
    }

    private boolean showVerifiedBadge() {
        return this.isVerified && !this.hideVerifiedBadge;
    }

    public TextView getNameView() {
        return this.nameView;
    }

    public boolean isHideInfluencerBadge() {
        return this.hideInfluencerBadge;
    }

    public boolean isHideRankingBadge() {
        return this.hideRankingBadge;
    }

    public boolean isRtlOrReverse() {
        return this.rtl || this.isReverse;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int iCalcRoleSize = calcRoleSize() + calcBadgeSize();
        if (!this.nameCenter) {
            iCalcRoleSize = 0;
        }
        if (isRtlOrReverse()) {
            int paddingRight = (i14 - getPaddingRight()) - iCalcRoleSize;
            TextView textView = this.nameView;
            int i16 = i15 / 2;
            textView.layout(paddingRight - textView.getMeasuredWidth(), i16 - (this.nameView.getMeasuredHeight() / 2), paddingRight, i16 + (this.nameView.getMeasuredHeight() / 2));
            return;
        }
        int paddingLeft = getPaddingLeft() + iCalcRoleSize;
        TextView textView2 = this.nameView;
        int i17 = i15 / 2;
        textView2.layout(paddingLeft, i17 - (textView2.getMeasuredHeight() / 2), this.nameView.getMeasuredWidth() + paddingLeft, i17 + (this.nameView.getMeasuredHeight() / 2));
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i10) {
        setDarkTheme(i10 == 2);
    }

    public void setHideInfluencerBadge(boolean z6) {
        this.hideInfluencerBadge = z6;
        this.setHideInfluencerBadge = true;
    }

    public void setHideRankingBadge(boolean z6) {
        this.hideRankingBadge = z6;
        if (this.setHideInfluencerBadge) {
            return;
        }
        this.hideInfluencerBadge = z6;
    }

    public void setMembership(boolean z6) {
        this.isMembership = z6;
    }

    public void setRankingBadge(int i10) {
        Drawable badge;
        RankingService rankingService = this.rankingService;
        if (rankingService == null) {
            badge = null;
        } else {
            badge = this.useBigBadge ? rankingService.getBadge(i10) : rankingService.getBadgeSmall(i10);
        }
        if (badge != this.badgeDrawable) {
            this.badgeDrawable = badge;
            requestLayout();
        }
    }

    public void setRankingService(RankingService rankingService) {
        this.rankingService = rankingService;
    }

    public void setReverse(boolean z6) {
        this.isReverse = z6;
    }

    public void setShowAuthorViewBorder(boolean z6) {
        this.showAuthorViewBorder = z6;
    }

    public void setText(int i10) {
        this.nameView.setText(i10);
    }

    public void setTextColor(int i10) {
        this.nameView.setTextColor(i10);
    }

    public void setUser(User user) {
        setUser(user, false);
    }

    private void addInfluencerBadge() {
        if (this.influencerBadge == null) {
            this.influencerBadge = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_influencer);
        }
        Drawable drawable = this.influencerBadge;
        if (drawable != this.badgeDrawable) {
            this.badgeDrawable = drawable;
            requestLayout();
        }
    }

    private int calcRoleSize() {
        int textSize = (int) (this.paint.getTextSize() * this.rolePaddingRatio);
        int textSize2 = (int) (this.paint.getTextSize() * this.roleMarginRatio);
        String str = this.role1;
        int iMeasureText = str != null ? measureText(this.paint, str) + (textSize * 2) + textSize2 : 0;
        String str2 = this.role2;
        return str2 != null ? iMeasureText + measureText(this.paint, str2) + (textSize * 2) + textSize2 : iMeasureText;
    }

    private int getBadgeWidthWithMargin(Drawable drawable) {
        return ((int) ((((this.paint.getTextSize() * 1.75f) * this.badgeScale) * drawable.getIntrinsicWidth()) / drawable.getIntrinsicHeight())) + ((int) (this.paint.getTextSize() * 0.32f));
    }

    private int getBageWidth(Drawable drawable, int i10) {
        if (drawable == null) {
            return 0;
        }
        return (i10 * drawable.getIntrinsicWidth()) / drawable.getIntrinsicHeight();
    }

    private int getFinalBadgeHeight(int i10) {
        float textSize = this.paint.getTextSize() * 1.75f;
        float f = this.badgeScale;
        int i11 = (int) (textSize * f);
        return f <= 1.0f ? Math.min(i11, i10) : i11;
    }

    private boolean hideInfluencerBadge(User user) {
        int i10;
        return user == null || this.hideInfluencerBadge || (i10 = user.role) == 254 || i10 == 253 || user.isDisabled();
    }

    private boolean hideRankingBadge(User user) {
        int i10;
        return user == null || this.hideRankingBadge || (i10 = user.role) == 254 || i10 == 253 || user.isDisabled();
    }

    public void setDarkTheme(boolean z6) {
        if (this.isDarkTheme == z6) {
            return;
        }
        this.isDarkTheme = z6;
        this.nameView.setTextColor(z6 ? ColorStateList.valueOf(-1) : this.textColor);
        invalidate();
    }

    public void setHideMembershipBadge(boolean z6) {
        if (this.hideMembershipBadge != z6) {
            this.hideMembershipBadge = z6;
            requestLayout();
        }
    }

    public void setHideVerifiedBadge(boolean z6) {
        if (this.hideVerifiedBadge != z6) {
            this.hideVerifiedBadge = z6;
            requestLayout();
        }
    }

    public void setRole1(String str, int i10) {
        if (Utils.isStringEquals(str, this.role1) && this.role1Bg == i10) {
            return;
        }
        this.role1 = str;
        this.role1Bg = i10;
        requestLayout();
    }

    public void setRole2(String str, int i10) {
        if (Utils.isStringEquals(str, this.role2) && this.role2Bg == i10) {
            return;
        }
        this.role2 = str;
        this.role2Bg = i10;
        requestLayout();
    }

    public void setText(CharSequence charSequence) {
        this.nameView.setText(charSequence);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.nameView.setTextColor(colorStateList);
    }

    public void setTextSize(int i10) {
        this.nameView.setTextSize(0, i10);
    }

    public void setUser(User user, boolean z6) {
        String strNicknameForCatalog;
        if (user == null) {
            strNicknameForCatalog = null;
        } else {
            strNicknameForCatalog = z6 ? user.nicknameForCatalog() : user.nickname();
        }
        setText(strNicknameForCatalog);
        setRole1((user == null || this.hideRole) ? null : user.roleName(), user == null ? 0 : user.roleColor());
        this.isVerified = user != null && user.isNicknameVerified();
        this.isMembership = user != null && user.isSubscribeMemberShip();
        AccountService accountService = (AccountService) Utils.getNVContext(getContext()).getService("account");
        this.isMe = user != null && Utils.isEqualsNotNull(user.id(), accountService != null ? accountService.getUserId() : null);
        if (user == null || !user.isInfluencer() || hideInfluencerBadge(user)) {
            setRankingBadge(hideRankingBadge(user) ? 0 : user.level);
        } else {
            addInfluencerBadge();
        }
        requestLayout();
    }

    public NicknameView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.badgeScale = 1.0f;
        this.showAuthorViewBorder = true;
        setWillNotDraw(false);
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext != null) {
            ConfigService configService = (ConfigService) nVContext.getService("config");
            if (NVApplication.CLIENT_TYPE == 200 || configService.getCommunityId() != 0) {
                this.rankingService = (RankingService) nVContext.getService(Module.MODULE_RANKING);
            }
        }
        this.rtl = Utils.isRtl();
        TextView textView = new TextView(context);
        this.nameView = textView;
        textView.setSingleLine();
        textView.setEllipsize(TextUtils.TruncateAt.END);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NicknameView);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NicknameView_android_textSize, (int) Utils.dpToPx(context, 14.0f));
        this.roleScale = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_roleScale, 0.75f);
        this.rolePaddingRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_rolePaddingRatio, 0.34f);
        this.roleMarginRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_roleMarginRatio, 0.48f);
        this.roleRadiusRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_roleRadiusRatio, 0.42f);
        this.nameCenter = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_nameCenter, false);
        textView.setTextSize(0, dimensionPixelSize);
        textView.setTypeface(Typeface.defaultFromStyle(typedArrayObtainStyledAttributes.getInt(R.styleable.NicknameView_android_textStyle, 0)));
        textView.setShadowLayer(typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_android_shadowRadius, 0.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_android_shadowDx, 0.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_android_shadowDy, 0.0f), typedArrayObtainStyledAttributes.getInt(R.styleable.NicknameView_android_shadowColor, 0));
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.NicknameView_android_textColor);
        this.textColor = colorStateList;
        if (colorStateList == null) {
            this.textColor = ColorStateList.valueOf(-12303292);
        }
        textView.setTextColor(this.textColor);
        this.hideRankingBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideRankingBadge, false);
        int i10 = R.styleable.NicknameView_hideInfluencerBadge;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            this.hideInfluencerBadge = typedArrayObtainStyledAttributes.getBoolean(i10, false);
            this.setHideInfluencerBadge = true;
        } else {
            this.hideInfluencerBadge = this.hideRankingBadge;
        }
        this.hideVerifiedBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideVerifiedBadge, false);
        this.hideMembershipBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideMembershipBadge, false);
        this.hideRole = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideRole, false);
        this.useBigBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_useBigBadge, false);
        this.allowShowUnsubscribe = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_allowShowUnsubscribe, false);
        typedArrayObtainStyledAttributes.recycle();
        addView(textView, new ViewGroup.LayoutParams(-2, -2));
        this.rectf = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setTextSize((int) (dimensionPixelSize * this.roleScale));
        Paint paint2 = new Paint();
        this.strokePaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        paint2.setColor(-1);
        paint2.setAntiAlias(true);
        this.verifiedDrawable = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_verified);
        this.membershipDrawable = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_membership);
        this.unsubscribeDrawable = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_unsubscribe);
    }

    private int calcBadgeSize() {
        int badgeWidthWithMargin;
        if (showVerifiedBadge()) {
            badgeWidthWithMargin = getBadgeWidthWithMargin(this.verifiedDrawable);
        } else {
            badgeWidthWithMargin = 0;
        }
        if (showMembershipBadge()) {
            badgeWidthWithMargin += getBadgeWidthWithMargin(this.membershipDrawable);
        }
        if (showUnsubscribeBadge()) {
            badgeWidthWithMargin += getBadgeWidthWithMargin(this.unsubscribeDrawable);
        }
        Drawable drawable = this.badgeDrawable;
        if (drawable != null) {
            return badgeWidthWithMargin + getBadgeWidthWithMargin(drawable);
        }
        return badgeWidthWithMargin;
    }

    private int getX(Canvas canvas, int i10, int i11, int i12, int i13, Drawable drawable) {
        int bageWidth = getBageWidth(drawable, i12);
        if (isRtlOrReverse()) {
            i10 -= bageWidth;
        }
        drawable.setBounds(i10, i13, i10 + bageWidth, i12 + i13);
        drawable.draw(canvas);
        if (isRtlOrReverse()) {
            return i10 - i11;
        }
        return i10 + bageWidth + i11;
    }

    private static int measureText(Paint paint, String str) {
        int textSize = (int) paint.getTextSize();
        HashMap<String, SparseIntArray> map = MEASURE_CACHE;
        SparseIntArray sparseIntArray = map.get(str);
        if (sparseIntArray == null) {
            sparseIntArray = new SparseIntArray();
            map.put(str, sparseIntArray);
        } else {
            int i10 = sparseIntArray.get(textSize);
            if (i10 != 0) {
                return i10;
            }
        }
        int iRound = Math.round(paint.measureText(str));
        sparseIntArray.put(textSize, iRound);
        return iRound;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int right;
        int right2;
        super.onDraw(canvas);
        int iCalcBadgeSize = calcBadgeSize();
        if (iCalcBadgeSize > 0) {
            int textSize = (int) (this.paint.getTextSize() * 0.32f);
            if (isRtlOrReverse()) {
                right2 = this.nameView.getLeft() - textSize;
            } else {
                right2 = this.nameView.getRight() + textSize;
            }
            int x6 = right2;
            int finalBadgeHeight = getFinalBadgeHeight(getHeight());
            int finalBadgeHeight2 = getFinalBadgeHeight((int) (getHeight() * 0.9f));
            int height = (getHeight() - finalBadgeHeight) / 2;
            if (showVerifiedBadge()) {
                x6 = getX(canvas, x6, textSize, finalBadgeHeight, height, this.verifiedDrawable);
            }
            if (showMembershipBadge()) {
                x6 = getX(canvas, x6, textSize, finalBadgeHeight, height, this.membershipDrawable);
            }
            if (showUnsubscribeBadge()) {
                x6 = getX(canvas, x6, textSize, finalBadgeHeight, height, this.unsubscribeDrawable);
            }
            Drawable drawable = this.badgeDrawable;
            if (drawable != null) {
                if (drawable != this.influencerBadge) {
                    height = (getHeight() - finalBadgeHeight2) / 2;
                    finalBadgeHeight = finalBadgeHeight2;
                }
                int bageWidth = getBageWidth(this.badgeDrawable, finalBadgeHeight);
                if (isRtlOrReverse()) {
                    x6 -= bageWidth;
                }
                this.badgeDrawable.setBounds(x6, height, bageWidth + x6, finalBadgeHeight + height);
                this.badgeDrawable.draw(canvas);
            }
        }
        int textSize2 = (int) (this.paint.getTextSize() * this.rolePaddingRatio);
        int textSize3 = (int) (this.paint.getTextSize() * this.roleMarginRatio);
        float textSize4 = this.paint.getTextSize() * this.roleRadiusRatio;
        if (isRtlOrReverse()) {
            right = this.nameView.getLeft() - iCalcBadgeSize;
        } else {
            right = this.nameView.getRight() + iCalcBadgeSize;
        }
        float height2 = (getHeight() / 2) - ((this.paint.ascent() + this.paint.descent()) * 0.5f);
        if (!TextUtils.isEmpty(this.role1)) {
            int iMeasureText = measureText(this.paint, this.role1);
            if (isRtlOrReverse()) {
                right -= ((textSize2 * 2) + iMeasureText) + (textSize3 * 2);
            }
            this.paint.setColor(this.role1Bg);
            RectF rectF = this.rectf;
            int i10 = right + textSize3;
            rectF.left = i10;
            float f = textSize2 / 2;
            rectF.top = (this.paint.ascent() + height2) - f;
            RectF rectF2 = this.rectf;
            int i11 = textSize2 * 2;
            rectF2.right = i10 + iMeasureText + i11;
            rectF2.bottom = this.paint.descent() + height2 + f;
            canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.paint);
            if (this.isDarkTheme) {
                canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.strokePaint);
            }
            this.paint.setColor(-1);
            canvas.drawText(this.role1, i10 + textSize2, height2, this.paint);
            if (!isRtlOrReverse()) {
                right += iMeasureText + textSize3 + i11;
            }
        }
        if (!TextUtils.isEmpty(this.role2)) {
            int iMeasureText2 = measureText(this.paint, this.role2);
            if (isRtlOrReverse()) {
                right -= ((textSize2 * 2) + iMeasureText2) + textSize3;
            }
            this.paint.setColor(this.role2Bg);
            RectF rectF3 = this.rectf;
            int i12 = right + textSize3;
            rectF3.left = i12;
            float f6 = textSize2 / 2;
            rectF3.top = (this.paint.ascent() + height2) - f6;
            RectF rectF4 = this.rectf;
            rectF4.right = iMeasureText2 + i12 + (textSize2 * 2);
            rectF4.bottom = this.paint.descent() + height2 + f6;
            canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.paint);
            if (this.isDarkTheme && this.showAuthorViewBorder) {
                canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.strokePaint);
            }
            this.paint.setColor(-1);
            canvas.drawText(this.role2, i12 + textSize2, height2, this.paint);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        int iCalcRoleSize = calcRoleSize() + calcBadgeSize();
        int i13 = 1;
        if (this.nameCenter) {
            i12 = 2;
        } else {
            i12 = 1;
        }
        int iMax = Math.max(0, ((size - (i12 * iCalcRoleSize)) - getPaddingLeft()) - getPaddingRight());
        TextView textView = this.nameView;
        if (mode != 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE);
        }
        textView.measure(i10, ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), -2));
        if (mode != 1073741824) {
            int measuredWidth = this.nameView.getMeasuredWidth();
            if (this.nameCenter) {
                i13 = 2;
            }
            size = getPaddingRight() + measuredWidth + (iCalcRoleSize * i13) + getPaddingLeft();
        }
        if (mode2 != 1073741824) {
            size2 = this.nameView.getMeasuredHeight() + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, size2);
    }

    public void setRankingBadge(Drawable drawable) {
        if (drawable != this.badgeDrawable) {
            this.badgeDrawable = drawable;
            requestLayout();
        }
    }
}
