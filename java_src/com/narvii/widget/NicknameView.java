package com.narvii.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
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

/* loaded from: classes3.dex */
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

    public void setRankingService(RankingService rankingService) {
        this.rankingService = rankingService;
    }

    public boolean isHideRankingBadge() {
        return this.hideRankingBadge;
    }

    public void setHideRankingBadge(boolean z) {
        this.hideRankingBadge = z;
        if (this.setHideInfluencerBadge) {
            return;
        }
        this.hideInfluencerBadge = z;
    }

    public boolean isHideInfluencerBadge() {
        return this.hideInfluencerBadge;
    }

    public void setHideInfluencerBadge(boolean z) {
        this.hideInfluencerBadge = z;
        this.setHideInfluencerBadge = true;
    }

    public void setReverse(boolean z) {
        this.isReverse = z;
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
        this.nameView = new TextView(context);
        this.nameView.setSingleLine();
        this.nameView.setEllipsize(TextUtils.TruncateAt.END);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NicknameView);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NicknameView_android_textSize, (int) Utils.dpToPx(context, 14.0f));
        this.roleScale = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_roleScale, 0.75f);
        this.rolePaddingRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_rolePaddingRatio, 0.34f);
        this.roleMarginRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_roleMarginRatio, 0.48f);
        this.roleRadiusRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_roleRadiusRatio, 0.42f);
        this.nameCenter = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_nameCenter, false);
        this.nameView.setTextSize(0, dimensionPixelSize);
        this.nameView.setTypeface(Typeface.defaultFromStyle(typedArrayObtainStyledAttributes.getInt(R.styleable.NicknameView_android_textStyle, 0)));
        this.nameView.setShadowLayer(typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_android_shadowRadius, 0.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_android_shadowDx, 0.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.NicknameView_android_shadowDy, 0.0f), typedArrayObtainStyledAttributes.getInt(R.styleable.NicknameView_android_shadowColor, 0));
        this.textColor = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.NicknameView_android_textColor);
        if (this.textColor == null) {
            this.textColor = ColorStateList.valueOf(-12303292);
        }
        this.nameView.setTextColor(this.textColor);
        this.hideRankingBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideRankingBadge, false);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.NicknameView_hideInfluencerBadge)) {
            this.hideInfluencerBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideInfluencerBadge, false);
            this.setHideInfluencerBadge = true;
        } else {
            this.hideInfluencerBadge = this.hideRankingBadge;
        }
        this.hideVerifiedBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideVerifiedBadge, false);
        this.hideMembershipBadge = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideMembershipBadge, false);
        this.hideRole = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_hideRole, false);
        this.useBigBadge = true;
        this.allowShowUnsubscribe = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NicknameView_allowShowUnsubscribe, false);
        typedArrayObtainStyledAttributes.recycle();
        addView(this.nameView, new ViewGroup.LayoutParams(-2, -2));
        this.rectf = new RectF();
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setAntiAlias(true);
        this.paint.setTextSize((int) (dimensionPixelSize * this.roleScale));
        this.strokePaint = new Paint();
        this.strokePaint.setStyle(Paint.Style.STROKE);
        this.strokePaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.strokePaint.setColor(-1);
        this.strokePaint.setAntiAlias(true);
        this.verifiedDrawable = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_verified);
        this.membershipDrawable = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_membership);
        this.unsubscribeDrawable = ContextCompat.getDrawable(getContext(), R.drawable.ic_badge_unsubscribe);
    }

    public TextView getNameView() {
        return this.nameView;
    }

    public void setDarkTheme(boolean z) {
        if (this.isDarkTheme == z) {
            return;
        }
        this.isDarkTheme = z;
        this.nameView.setTextColor(this.isDarkTheme ? ColorStateList.valueOf(-1) : this.textColor);
        invalidate();
    }

    public void setHideVerifiedBadge(boolean z) {
        if (this.hideVerifiedBadge != z) {
            this.hideVerifiedBadge = z;
            requestLayout();
        }
    }

    public void setHideMembershipBadge(boolean z) {
        if (this.hideMembershipBadge != z) {
            this.hideMembershipBadge = z;
            requestLayout();
        }
    }

    public void setText(int i) {
        this.nameView.setText(i);
    }

    public void setText(CharSequence charSequence) {
        this.nameView.setText(charSequence);
    }

    public void setTextColor(int i) {
        this.nameView.setTextColor(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.nameView.setTextColor(colorStateList);
    }

    public void setTextSize(int i) {
        this.nameView.setTextSize(0, i);
    }

    public void setRole1(String str, int i) {
        if (Utils.isStringEquals(str, this.role1) && this.role1Bg == i) {
            return;
        }
        this.role1 = str;
        this.role1Bg = i;
        requestLayout();
    }

    public void setRole2(String str, int i) {
        if (Utils.isStringEquals(str, this.role2) && this.role2Bg == i) {
            return;
        }
        this.role2 = str;
        this.role2Bg = i;
        requestLayout();
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

    public void setRankingBadge(int i) {
        RankingService rankingService = this.rankingService;
        Drawable badge = rankingService == null ? null : this.useBigBadge ? rankingService.getBadge(i) : rankingService.getBadgeSmall(i);
        if (badge != this.badgeDrawable) {
            this.badgeDrawable = badge;
            requestLayout();
        }
    }

    public void setRankingBadge(Drawable drawable) {
        if (drawable != this.badgeDrawable) {
            this.badgeDrawable = drawable;
            requestLayout();
        }
    }

    public void setUser(User user) {
        setUser(user, false);
    }

    public void setUser(User user, boolean z) {
        String strNicknameForCatalog;
        if (user == null) {
            strNicknameForCatalog = null;
        } else {
            strNicknameForCatalog = z ? user.nicknameForCatalog() : user.nickname();
        }
        setText(strNicknameForCatalog);
        setRole1((user == null || this.hideRole) ? null : user.roleName(), user == null ? 0 : user.roleColor());
        this.isVerified = user != null && user.isNicknameVerified();
        this.isMembership = user != null && user.isSubscribeMemberShip();
        AccountService accountService = (AccountService) Utils.getNVContext(getContext()).getService("account");
        this.isMe = user != null && Utils.isEqualsNotNull(user.id(), accountService != null ? accountService.getUserId() : null);
        if (user != null && user.isInfluencer() && !hideInfluencerBadge(user)) {
            addInfluencerBadge();
        } else {
            setRankingBadge(hideRankingBadge(user) ? 0 : user.level);
        }
        requestLayout();
    }

    public void setMembership(boolean z) {
        this.isMembership = z;
    }

    private boolean hideRankingBadge(User user) {
        int i;
        return user == null || this.hideRankingBadge || (i = user.role) == 254 || i == 253 || user.isDisabled();
    }

    private boolean hideInfluencerBadge(User user) {
        int i;
        return user == null || this.hideInfluencerBadge || (i = user.role) == 254 || i == 253 || user.isDisabled();
    }

    private int calcRoleSize() {
        int textSize = (int) (this.paint.getTextSize() * this.rolePaddingRatio);
        int textSize2 = (int) (this.paint.getTextSize() * this.roleMarginRatio);
        String str = this.role1;
        int iMeasureText = str != null ? 0 + measureText(this.paint, str) + (textSize * 2) + textSize2 : 0;
        String str2 = this.role2;
        return str2 != null ? iMeasureText + measureText(this.paint, str2) + (textSize * 2) + textSize2 : iMeasureText;
    }

    private int calcBadgeSize() {
        int badgeWidthWithMargin = showVerifiedBadge() ? 0 + getBadgeWidthWithMargin(this.verifiedDrawable) : 0;
        if (showMembershipBadge()) {
            badgeWidthWithMargin += getBadgeWidthWithMargin(this.membershipDrawable);
        }
        if (showUnsubscribeBadge()) {
            badgeWidthWithMargin += getBadgeWidthWithMargin(this.unsubscribeDrawable);
        }
        Drawable drawable = this.badgeDrawable;
        return drawable != null ? badgeWidthWithMargin + getBadgeWidthWithMargin(drawable) : badgeWidthWithMargin;
    }

    private int getBadgeWidthWithMargin(Drawable drawable) {
        return ((int) ((((this.paint.getTextSize() * 1.75f) * this.badgeScale) * drawable.getIntrinsicWidth()) / drawable.getIntrinsicHeight())) + ((int) (this.paint.getTextSize() * 0.32f));
    }

    private int getBageWidth(Drawable drawable, int i) {
        if (drawable == null) {
            return 0;
        }
        return (i * drawable.getIntrinsicWidth()) / drawable.getIntrinsicHeight();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int iCalcRoleSize = calcRoleSize() + calcBadgeSize();
        int iMax = Math.max(0, ((size - ((this.nameCenter ? 2 : 1) * iCalcRoleSize)) - getPaddingLeft()) - getPaddingRight());
        TextView textView = this.nameView;
        if (mode != 0) {
            i = View.MeasureSpec.makeMeasureSpec(iMax, Integer.MIN_VALUE);
        }
        textView.measure(i, ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), -2));
        if (mode != 1073741824) {
            size = getPaddingRight() + this.nameView.getMeasuredWidth() + (iCalcRoleSize * (this.nameCenter ? 2 : 1)) + getPaddingLeft();
        }
        if (mode2 != 1073741824) {
            size2 = this.nameView.getMeasuredHeight() + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int iCalcRoleSize = calcRoleSize() + calcBadgeSize();
        if (!this.nameCenter) {
            iCalcRoleSize = 0;
        }
        if (isRtlOrReverse()) {
            int paddingRight = (i5 - getPaddingRight()) - iCalcRoleSize;
            TextView textView = this.nameView;
            int i7 = i6 / 2;
            textView.layout(paddingRight - textView.getMeasuredWidth(), i7 - (this.nameView.getMeasuredHeight() / 2), paddingRight, i7 + (this.nameView.getMeasuredHeight() / 2));
            return;
        }
        int paddingLeft = getPaddingLeft() + iCalcRoleSize;
        TextView textView2 = this.nameView;
        int i8 = i6 / 2;
        textView2.layout(paddingLeft, i8 - (textView2.getMeasuredHeight() / 2), this.nameView.getMeasuredWidth() + paddingLeft, i8 + (this.nameView.getMeasuredHeight() / 2));
    }

    private boolean showVerifiedBadge() {
        return this.isVerified && !this.hideVerifiedBadge;
    }

    private boolean showMembershipBadge() {
        return this.isMembership && !this.hideMembershipBadge;
    }

    private boolean showUnsubscribeBadge() {
        return !this.isMembership && this.isMe && this.allowShowUnsubscribe;
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
            int x = right2;
            int finalBadgeHeight = getFinalBadgeHeight(getHeight());
            int finalBadgeHeight2 = getFinalBadgeHeight((int) (getHeight() * 0.9f));
            int height = (getHeight() - finalBadgeHeight) / 2;
            if (showVerifiedBadge()) {
                x = getX(canvas, x, textSize, finalBadgeHeight, height, this.verifiedDrawable);
            }
            if (showMembershipBadge()) {
                x = getX(canvas, x, textSize, finalBadgeHeight, height, this.membershipDrawable);
            }
            if (showUnsubscribeBadge()) {
                x = getX(canvas, x, textSize, finalBadgeHeight, height, this.unsubscribeDrawable);
            }
            Drawable drawable = this.badgeDrawable;
            if (drawable != null) {
                if (drawable != this.influencerBadge) {
                    height = (getHeight() - finalBadgeHeight2) / 2;
                    finalBadgeHeight = finalBadgeHeight2;
                }
                int bageWidth = getBageWidth(this.badgeDrawable, finalBadgeHeight);
                if (isRtlOrReverse()) {
                    x -= bageWidth;
                }
                this.badgeDrawable.setBounds(x, height, bageWidth + x, finalBadgeHeight + height);
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
            rectF.left = right + textSize3;
            float f = textSize2 / 2;
            rectF.top = (this.paint.ascent() + height2) - f;
            RectF rectF2 = this.rectf;
            int i = textSize2 * 2;
            rectF2.right = r8 + iMeasureText + i;
            rectF2.bottom = this.paint.descent() + height2 + f;
            canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.paint);
            if (this.isDarkTheme) {
                canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.strokePaint);
            }
            this.paint.setColor(-1);
            canvas.drawText(this.role1, r8 + textSize2, height2, this.paint);
            if (!isRtlOrReverse()) {
                right += iMeasureText + textSize3 + i;
            }
        }
        if (TextUtils.isEmpty(this.role2)) {
            return;
        }
        int iMeasureText2 = measureText(this.paint, this.role2);
        if (isRtlOrReverse()) {
            right -= ((textSize2 * 2) + iMeasureText2) + textSize3;
        }
        this.paint.setColor(this.role2Bg);
        RectF rectF3 = this.rectf;
        rectF3.left = right + textSize3;
        float f2 = textSize2 / 2;
        rectF3.top = (this.paint.ascent() + height2) - f2;
        RectF rectF4 = this.rectf;
        rectF4.right = iMeasureText2 + r4 + (textSize2 * 2);
        rectF4.bottom = this.paint.descent() + height2 + f2;
        canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.paint);
        if (this.isDarkTheme && this.showAuthorViewBorder) {
            canvas.drawRoundRect(this.rectf, textSize4, textSize4, this.strokePaint);
        }
        this.paint.setColor(-1);
        canvas.drawText(this.role2, r4 + textSize2, height2, this.paint);
    }

    private int getX(Canvas canvas, int i, int i2, int i3, int i4, Drawable drawable) {
        int bageWidth = getBageWidth(drawable, i3);
        if (isRtlOrReverse()) {
            i -= bageWidth;
        }
        drawable.setBounds(i, i4, i + bageWidth, i3 + i4);
        drawable.draw(canvas);
        return isRtlOrReverse() ? i - i2 : i + bageWidth + i2;
    }

    private int getFinalBadgeHeight(int i) {
        float textSize = this.paint.getTextSize() * 1.75f;
        float f = this.badgeScale;
        int i2 = (int) (textSize * f);
        return f <= 1.0f ? Math.min(i2, i) : i2;
    }

    private static int measureText(Paint paint, String str) {
        int textSize = (int) paint.getTextSize();
        SparseIntArray sparseIntArray = MEASURE_CACHE.get(str);
        if (sparseIntArray == null) {
            sparseIntArray = new SparseIntArray();
            MEASURE_CACHE.put(str, sparseIntArray);
        } else {
            int i = sparseIntArray.get(textSize);
            if (i != 0) {
                return i;
            }
        }
        int iRound = Math.round(paint.measureText(str));
        sparseIntArray.put(textSize, iRound);
        return iRound;
    }

    public void setShowAuthorViewBorder(boolean z) {
        this.showAuthorViewBorder = z;
    }

    @Override // com.narvii.app.theme.NVThemeObserver
    public void onThemeChange(int i) {
        setDarkTheme(i == 2);
    }

    public boolean isRtlOrReverse() {
        return this.rtl || this.isReverse;
    }
}
