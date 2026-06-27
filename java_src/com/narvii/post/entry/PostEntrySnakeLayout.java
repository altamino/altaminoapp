package com.narvii.post.entry;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftManager;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class PostEntrySnakeLayout extends FrameLayout {
    final LinkedList<Animator> animators;
    final LinkedList<View> backgrounds;
    final LinkedList<ComposeEntryItem> btns;
    int fraction;
    final boolean isRtl;
    boolean layout;
    Boolean pendingGo;
    final PointF tmpp;

    public PostEntrySnakeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.backgrounds = new LinkedList<>();
        this.btns = new LinkedList<>();
        this.tmpp = new PointF();
        this.animators = new LinkedList<>();
        this.fraction = 4;
        this.isRtl = ViewCompat.getLayoutDirection(this) == 1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() == R.id.background) {
                this.backgrounds.add(childAt);
            }
        }
    }

    public void setEntryKeys(NVContext nVContext, List<String> list, final EntryItemClickListener entryItemClickListener) {
        EntryManager entryManager = new EntryManager(nVContext);
        LinkedList linkedList = new LinkedList();
        while (!this.btns.isEmpty()) {
            ComposeEntryItem composeEntryItemRemoveFirst = this.btns.removeFirst();
            removeView(composeEntryItemRemoveFirst);
            linkedList.add(composeEntryItemRemoveFirst);
        }
        int size = (list == null ? 0 : list.size() + (this.fraction - 1)) / this.fraction;
        int size2 = this.backgrounds.size();
        int i = 0;
        while (i < size2) {
            this.backgrounds.get(i).setVisibility(i < size ? 0 : 4);
            i++;
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        AccountService accountService = (AccountService) nVContext.getService("account");
        DraftManager draftManager = (DraftManager) nVContext.getService(EntryManager.ENTRY_DRAFT);
        int size3 = draftManager.list() == null ? 0 : draftManager.list().size();
        User userProfile = accountService.getUserProfile();
        for (final String str : list) {
            final EntryEligibleCheckResult entryEligibleCheckResultCanCurUserPost = entryManager.canCurUserPost(userProfile, str);
            ComposeEntryItem composeEntryItem = (ComposeEntryItem) (linkedList.isEmpty() ? layoutInflaterFrom.inflate(R.layout.post_entry_compose_entry_item, (ViewGroup) this, false) : linkedList.removeFirst());
            composeEntryItem.setEntryItem(nVContext, entryEligibleCheckResultCanCurUserPost, str, size3);
            composeEntryItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.entry.PostEntrySnakeLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    EntryItemClickListener entryItemClickListener2 = entryItemClickListener;
                    if (entryItemClickListener2 != null) {
                        entryItemClickListener2.onEntryItemClicked(str, entryEligibleCheckResultCanCurUserPost);
                    }
                }
            });
            addView(composeEntryItem);
            this.btns.add(composeEntryItem);
        }
        this.layout = false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.layout = true;
        Boolean bool = this.pendingGo;
        if (bool != null) {
            go(bool.booleanValue());
        }
    }

    private void calcPosition(int i, PointF pointF) {
        int i2 = this.fraction;
        int i3 = i / i2;
        int i4 = i % i2;
        View view = this.backgrounds.get(i3);
        pointF.x = (((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) / (this.fraction * 2.0f)) * ((i4 * 2) + 1);
        if ((this.isRtl ? -1 : 1) * (i3 % 2 == 0 ? 1 : -1) == 1) {
            pointF.x = (view.getRight() - view.getPaddingRight()) - pointF.x;
        } else {
            pointF.x = view.getLeft() + view.getPaddingLeft() + pointF.x;
        }
        pointF.y = (view.getTop() + view.getBottom()) / 2;
    }

    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v4 */
    public int go(boolean z) {
        TimeInterpolator accelerateInterpolator;
        ValueAnimator valueAnimatorOfFloat;
        while (this.animators.size() > 0) {
            this.animators.removeLast().cancel();
        }
        if (!this.layout) {
            this.pendingGo = Boolean.valueOf(z);
            return this.btns.size() * 50;
        }
        if (z) {
            accelerateInterpolator = new DecelerateInterpolator();
        } else {
            accelerateInterpolator = new AccelerateInterpolator();
        }
        TimeInterpolator timeInterpolator = accelerateInterpolator;
        ?? r8 = 0;
        calcPosition(0, this.tmpp);
        int size = this.btns.size();
        Path[] pathArr = new Path[size];
        for (int i = 0; i < size; i++) {
            Path path = new Path();
            PointF pointF = this.tmpp;
            path.moveTo(pointF.x, pointF.y);
            pathArr[i] = path;
        }
        for (int i2 = 0; i2 < size; i2++) {
            ComposeEntryItem composeEntryItem = this.btns.get(i2);
            if (!z) {
                calcPosition(i2, this.tmpp);
            }
            composeEntryItem.setX(this.tmpp.x - (composeEntryItem.getWidth() / 2));
            composeEntryItem.setY(this.tmpp.y - (composeEntryItem.getHeight() / 2));
        }
        for (int i3 = 1; i3 < size; i3++) {
            calcPosition(i3, this.tmpp);
            for (int i4 = i3; i4 < size; i4++) {
                Path path2 = pathArr[i4];
                PointF pointF2 = this.tmpp;
                path2.lineTo(pointF2.x, pointF2.y);
            }
        }
        int i5 = size * 50;
        final float[] fArr = new float[2];
        final float[] fArr2 = new float[2];
        int i6 = size - 1;
        float f = 0.0f;
        while (i6 > 0) {
            final ComposeEntryItem composeEntryItem2 = this.btns.get(i6);
            final PathMeasure pathMeasure = new PathMeasure(pathArr[i6], r8);
            float length = pathMeasure.getLength();
            float f2 = f == 0.0f ? length : f;
            int i7 = (int) ((i5 * length) / f2);
            float[] fArr3 = new float[2];
            if (z) {
                fArr3[r8] = 0.0f;
                fArr3[1] = length;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr3);
            } else {
                fArr3[r8] = length;
                fArr3[1] = 0.0f;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr3);
            }
            ValueAnimator valueAnimator = valueAnimatorOfFloat;
            Path[] pathArr2 = pathArr;
            valueAnimator.setDuration(i7);
            if (z) {
                valueAnimator.setStartDelay(i5 - i7);
            }
            valueAnimator.setInterpolator(timeInterpolator);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.post.entry.PostEntrySnakeLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    pathMeasure.getPosTan(((Float) valueAnimator2.getAnimatedValue()).floatValue(), fArr, fArr2);
                    composeEntryItem2.setX(fArr[0] - (r4.getWidth() / 2));
                    composeEntryItem2.setY(fArr[1] - (r4.getHeight() / 2));
                }
            });
            valueAnimator.start();
            this.animators.add(valueAnimator);
            i6--;
            f = f2;
            pathArr = pathArr2;
            r8 = 0;
        }
        return i5;
    }

    public void setFraction(int i) {
        if (i <= 0) {
            return;
        }
        this.fraction = i;
        invalidate();
    }
}
