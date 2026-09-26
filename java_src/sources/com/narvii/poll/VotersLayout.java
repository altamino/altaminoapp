package com.narvii.poll;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.community.CommunityHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.Blog;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class VotersLayout extends ViewGroup implements View.OnClickListener {
    static final int MAX_VOTERS = 10;
    Blog blog;
    String blogId;
    boolean expand;
    int iconN;
    final ArrayList<NVImageView> iconViews;
    final LayoutInflater inflater;
    int margin;
    View moreBtn;
    float p;
    int size;
    Voter voter;
    int voterCount;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setExpand(boolean z6, boolean z10) {
        ValueAnimator valueAnimatorOfFloat;
        if (this.expand != z6) {
            this.expand = z6;
            if (!z10) {
                this.p = z6 ? 1.0f : 0.0f;
                setAlpha(1.0f);
                requestLayout();
                return;
            }
            float[] fArr = {1.0f, 0.0f};
            if (z6) {
                // fill-array-data instruction
                fArr[0] = 0.0f;
                fArr[1] = 1.0f;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
            } else {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
            }
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.poll.VotersLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VotersLayout.this.p = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    VotersLayout votersLayout = VotersLayout.this;
                    float f = votersLayout.p;
                    votersLayout.setAlpha(f > 0.5f ? (f - 0.5f) / 0.5f : 0.0f);
                    VotersLayout.this.requestLayout();
                }
            });
            valueAnimatorOfFloat.start();
            this.p = z6 ? 0.0f : 1.0f;
            setAlpha(0.0f);
            requestLayout();
        }
    }

    public void setVoter(Blog blog, Voter voter, int i10) {
        this.blog = blog;
        this.blogId = blog.blogId;
        this.voter = voter;
        this.voterCount = i10;
        if (update()) {
            requestLayout();
        }
    }

    public VotersLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.iconViews = new ArrayList<>();
        this.size = context.getResources().getDimensionPixelSize(R.dimen.poll_voter_icon_size);
        this.margin = context.getResources().getDimensionPixelSize(R.dimen.poll_voter_icon_margin);
        this.inflater = LayoutInflater.from(context);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!new CommunityHelper(Utils.getNVContext(getContext())).checkCommunityJoined(this.blog.ndcId)) {
            return;
        }
        if (view.getId() == R.id.icon) {
            Intent intent = UserProfileFragment.intent(Utils.getNVContext(getContext()), (User) new FilterHelper(Utils.getNVContext(getContext())).filter(this.voter.userList).get(((Integer) view.getTag(R.id.index)).intValue()));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Poll");
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
            return;
        }
        if (view.getId() == R.id.more) {
            Intent intent2 = FragmentWrapperActivity.intent(PollVoterListFragment.class);
            intent2.putExtra("blogId", this.blogId);
            intent2.putExtra("polloptId", this.voter.polloptId);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        float paddingLeft;
        float f;
        if (update()) {
            requestLayout();
            return;
        }
        if (this.iconN > 0) {
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int i14 = this.size;
            int i15 = this.iconN;
            float f6 = ((width - (i14 * i15)) * 1.0f) / (i15 + 1);
            boolean zIsRtl = Utils.isRtl();
            if (zIsRtl) {
                paddingLeft = ((getWidth() - getPaddingRight()) - f6) - this.size;
            } else {
                paddingLeft = getPaddingLeft() + f6;
            }
            int paddingTop = getPaddingTop() + (((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2);
            for (NVImageView nVImageView : this.iconViews) {
                int i16 = (int) paddingLeft;
                int i17 = this.size;
                nVImageView.layout(i16, paddingTop - (i17 / 2), i16 + i17, (i17 / 2) + paddingTop);
                if (zIsRtl) {
                    paddingLeft -= this.size + f6;
                } else {
                    paddingLeft += this.size + f6;
                }
            }
            View view = this.moreBtn;
            if (view != null) {
                if (zIsRtl) {
                    f = paddingLeft + this.size + f6;
                } else {
                    f = paddingLeft - (this.size + f6);
                }
                int i18 = (int) f;
                int i19 = this.size;
                view.layout(i18, paddingTop - (i19 / 2), i18 + i19, paddingTop + (i19 / 2));
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int defaultSize = View.getDefaultSize(getSuggestedMinimumWidth(), i10);
        int paddingTop = getPaddingTop() + getPaddingBottom() + this.size;
        if (this.voterCount == 0) {
            i12 = 0;
        } else {
            i12 = (int) (paddingTop * this.p);
        }
        setMeasuredDimension(defaultSize, i12);
    }

    boolean update() {
        boolean z6;
        List listEmptyList;
        int width = getWidth();
        int i10 = this.margin;
        int iMax = Math.max(0, Math.min(10, (width - i10) / (this.size + i10)));
        if (this.iconN != iMax) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.iconN = iMax;
        Voter voter = this.voter;
        if (voter != null && voter.userList != null) {
            listEmptyList = new FilterHelper(Utils.getNVContext(getContext())).filter(this.voter.userList);
        } else {
            listEmptyList = Collections.emptyList();
        }
        int iMin = Math.min(listEmptyList.size(), iMax);
        while (this.iconViews.size() < iMin) {
            NVImageView nVImageView = (NVImageView) this.inflater.inflate(R.layout.poll_option_voter_icon, (ViewGroup) this, false);
            nVImageView.setTag(R.id.index, Integer.valueOf(this.iconViews.size()));
            nVImageView.setOnClickListener(this);
            addView(nVImageView);
            this.iconViews.add(nVImageView);
            z6 = true;
        }
        while (this.iconViews.size() > iMin) {
            ArrayList<NVImageView> arrayList = this.iconViews;
            removeView(arrayList.remove(arrayList.size() - 1));
            z6 = true;
        }
        for (int i11 = 0; i11 < iMin; i11++) {
            NVImageView nVImageView2 = this.iconViews.get(i11);
            nVImageView2.setImageUrl(((User) listEmptyList.get(i11)).icon());
            CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(getContext()));
            if (((User) listEmptyList.get(i11)).isSubscribeMemberShip() && communityConfigHelper.isPremiumFeatureEnabled()) {
                nVImageView2.strokeColor = getResources().getColor(R.color.avatar_stroke_membership);
                nVImageView2.setStrokeWidth(Utils.dpToPx(getContext(), 2.0f));
            }
        }
        if (iMin > 0 && this.voterCount > iMax) {
            if (this.moreBtn != null) {
                View childAt = getChildAt(getChildCount() - 1);
                View view = this.moreBtn;
                if (childAt != view) {
                    removeView(view);
                    addView(this.moreBtn);
                    return true;
                }
            } else {
                View viewInflate = this.inflater.inflate(R.layout.poll_option_voter_more, (ViewGroup) this, false);
                this.moreBtn = viewInflate;
                viewInflate.setOnClickListener(this);
                addView(this.moreBtn);
                return true;
            }
        } else {
            View view2 = this.moreBtn;
            if (view2 != null) {
                removeView(view2);
                this.moreBtn = null;
                return true;
            }
        }
        return z6;
    }
}
