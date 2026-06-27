package com.narvii.poll;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.community.CommunityHelper;
import com.narvii.model.Blog;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
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

    public VotersLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.iconViews = new ArrayList<>();
        this.size = context.getResources().getDimensionPixelSize(R.dimen.poll_voter_icon_size);
        this.margin = context.getResources().getDimensionPixelSize(R.dimen.poll_voter_icon_margin);
        this.inflater = LayoutInflater.from(context);
    }

    public void setExpand(boolean z, boolean z2) {
        ValueAnimator valueAnimatorOfFloat;
        if (this.expand != z) {
            this.expand = z;
            if (z2) {
                float[] fArr = {1.0f, 0.0f};
                if (z) {
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
                this.p = z ? 0.0f : 1.0f;
                setAlpha(0.0f);
                requestLayout();
                return;
            }
            this.p = z ? 1.0f : 0.0f;
            setAlpha(1.0f);
            requestLayout();
        }
    }

    boolean update() {
        List listEmptyList;
        int width = getWidth();
        int i = this.margin;
        int iMax = Math.max(0, Math.min(10, (width - i) / (this.size + i)));
        boolean z = this.iconN != iMax;
        this.iconN = iMax;
        Voter voter = this.voter;
        if (voter == null || voter.userList == null) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new FilterHelper(Utils.getNVContext(getContext())).filter(this.voter.userList);
        }
        int iMin = Math.min(listEmptyList.size(), iMax);
        while (this.iconViews.size() < iMin) {
            NVImageView nVImageView = (NVImageView) this.inflater.inflate(R.layout.poll_option_voter_icon, (ViewGroup) this, false);
            nVImageView.setTag(R.id.index, Integer.valueOf(this.iconViews.size()));
            nVImageView.setOnClickListener(this);
            addView(nVImageView);
            this.iconViews.add(nVImageView);
            z = true;
        }
        while (this.iconViews.size() > iMin) {
            ArrayList<NVImageView> arrayList = this.iconViews;
            removeView(arrayList.remove(arrayList.size() - 1));
            z = true;
        }
        for (int i2 = 0; i2 < iMin; i2++) {
            NVImageView nVImageView2 = this.iconViews.get(i2);
            nVImageView2.setImageUrl(((User) listEmptyList.get(i2)).icon());
            if (((User) listEmptyList.get(i2)).isSubscribeMemberShip() && new CommunityConfigHelper(Utils.getNVContext(getContext())).isPremiumFeatureEnabled()) {
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
                this.moreBtn = this.inflater.inflate(R.layout.poll_option_voter_more, (ViewGroup) this, false);
                this.moreBtn.setOnClickListener(this);
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
        return z;
    }

    public void setVoter(Blog blog, Voter voter, int i) {
        this.blog = blog;
        this.blogId = blog.blogId;
        this.voter = voter;
        this.voterCount = i;
        if (update()) {
            requestLayout();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(ViewGroup.getDefaultSize(getSuggestedMinimumWidth(), i), this.voterCount == 0 ? 0 : (int) ((getPaddingTop() + getPaddingBottom() + this.size) * this.p));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float paddingLeft;
        float f;
        if (update()) {
            requestLayout();
            return;
        }
        if (this.iconN > 0) {
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int i5 = this.size;
            int i6 = this.iconN;
            float f2 = ((width - (i5 * i6)) * 1.0f) / (i6 + 1);
            boolean zIsRtl = Utils.isRtl();
            if (zIsRtl) {
                paddingLeft = ((getWidth() - getPaddingRight()) - f2) - this.size;
            } else {
                paddingLeft = getPaddingLeft() + f2;
            }
            int paddingTop = getPaddingTop() + (((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2);
            Iterator<NVImageView> it = this.iconViews.iterator();
            while (it.hasNext()) {
                NVImageView next = it.next();
                int i7 = (int) paddingLeft;
                int i8 = this.size;
                next.layout(i7, paddingTop - (i8 / 2), i7 + i8, (i8 / 2) + paddingTop);
                if (zIsRtl) {
                    paddingLeft -= this.size + f2;
                } else {
                    paddingLeft += this.size + f2;
                }
            }
            if (this.moreBtn != null) {
                if (zIsRtl) {
                    f = paddingLeft + this.size + f2;
                } else {
                    f = paddingLeft - (this.size + f2);
                }
                View view = this.moreBtn;
                int i9 = (int) f;
                int i10 = this.size;
                view.layout(i9, paddingTop - (i10 / 2), i9 + i10, paddingTop + (i10 / 2));
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (new CommunityHelper(Utils.getNVContext(getContext())).checkCommunityJoined(this.blog.ndcId)) {
            if (view.getId() == R.id.icon) {
                Intent intent = UserProfileFragment.intent(Utils.getNVContext(getContext()), (User) new FilterHelper(Utils.getNVContext(getContext())).filter(this.voter.userList).get(((Integer) view.getTag(R.id.index)).intValue()));
                intent.putExtra("Source", ScenePollPlayView.AREA_POLL);
                getContext().startActivity(intent);
                return;
            }
            if (view.getId() == R.id.more) {
                Intent intent2 = FragmentWrapperActivity.intent(PollVoterListFragment.class);
                intent2.putExtra("blogId", this.blogId);
                intent2.putExtra("polloptId", this.voter.polloptId);
                getContext().startActivity(intent2);
            }
        }
    }
}
