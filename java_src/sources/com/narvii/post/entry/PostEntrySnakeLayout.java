package com.narvii.post.entry;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftManager;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PostEntrySnakeLayout extends FrameLayout {
    final LinkedList<Animator> animators;
    final LinkedList<View> backgrounds;
    final LinkedList<ComposeEntryItem> btns;
    int fraction;
    final boolean isRtl;
    boolean layout;
    Boolean pendingGo;
    final PointF tmpp;

    private void calcPosition(int i10, PointF pointF) {
        int i11 = this.fraction;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        View view = this.backgrounds.get(i12);
        pointF.x = (((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) / (this.fraction * 2.0f)) * ((i13 * 2) + 1);
        if ((this.isRtl ? -1 : 1) * (i12 % 2 == 0 ? 1 : -1) == 1) {
            pointF.x = (view.getRight() - view.getPaddingRight()) - pointF.x;
        } else {
            pointF.x = view.getLeft() + view.getPaddingLeft() + pointF.x;
        }
        pointF.y = (view.getTop() + view.getBottom()) / 2;
    }

    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v4 */
    public int go(boolean z6) {
        ValueAnimator valueAnimatorOfFloat;
        while (this.animators.size() > 0) {
            this.animators.removeLast().cancel();
        }
        if (!this.layout) {
            this.pendingGo = Boolean.valueOf(z6);
            return this.btns.size() * 50;
        }
        TimeInterpolator decelerateInterpolator = z6 ? new DecelerateInterpolator() : new AccelerateInterpolator();
        ?? r10 = 0;
        calcPosition(0, this.tmpp);
        int size = this.btns.size();
        Path[] pathArr = new Path[size];
        for (int i10 = 0; i10 < size; i10++) {
            Path path = new Path();
            PointF pointF = this.tmpp;
            path.moveTo(pointF.x, pointF.y);
            pathArr[i10] = path;
        }
        for (int i11 = 0; i11 < size; i11++) {
            ComposeEntryItem composeEntryItem = this.btns.get(i11);
            if (!z6) {
                calcPosition(i11, this.tmpp);
            }
            composeEntryItem.setX(this.tmpp.x - (composeEntryItem.getWidth() / 2));
            composeEntryItem.setY(this.tmpp.y - (composeEntryItem.getHeight() / 2));
        }
        for (int i12 = 1; i12 < size; i12++) {
            calcPosition(i12, this.tmpp);
            for (int i13 = i12; i13 < size; i13++) {
                Path path2 = pathArr[i13];
                PointF pointF2 = this.tmpp;
                path2.lineTo(pointF2.x, pointF2.y);
            }
        }
        int i14 = size * 50;
        final float[] fArr = new float[2];
        final float[] fArr2 = new float[2];
        int i15 = size - 1;
        float f = 0.0f;
        while (i15 > 0) {
            final ComposeEntryItem composeEntryItem2 = this.btns.get(i15);
            final PathMeasure pathMeasure = new PathMeasure(pathArr[i15], r10);
            float length = pathMeasure.getLength();
            float f6 = f == 0.0f ? length : f;
            int i16 = (int) ((i14 * length) / f6);
            float[] fArr3 = new float[2];
            if (z6) {
                fArr3[r10] = 0.0f;
                fArr3[1] = length;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr3);
            } else {
                fArr3[r10] = length;
                fArr3[1] = 0.0f;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr3);
            }
            ValueAnimator valueAnimator = valueAnimatorOfFloat;
            Path[] pathArr2 = pathArr;
            valueAnimator.setDuration(i16);
            if (z6) {
                valueAnimator.setStartDelay(i14 - i16);
            }
            valueAnimator.setInterpolator(decelerateInterpolator);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.post.entry.PostEntrySnakeLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    pathMeasure.getPosTan(((Float) valueAnimator2.getAnimatedValue()).floatValue(), fArr, fArr2);
                    View view = composeEntryItem2;
                    view.setX(fArr[0] - (view.getWidth() / 2));
                    View view2 = composeEntryItem2;
                    view2.setY(fArr[1] - (view2.getHeight() / 2));
                }
            });
            valueAnimator.start();
            this.animators.add(valueAnimator);
            i15--;
            f = f6;
            pathArr = pathArr2;
            r10 = 0;
        }
        return i14;
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
        int i10 = 0;
        while (i10 < size2) {
            this.backgrounds.get(i10).setVisibility(i10 < size ? 0 : 4);
            i10++;
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

    public void setFraction(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.fraction = i10;
        invalidate();
    }

    public PostEntrySnakeLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.backgrounds = new LinkedList<>();
        this.btns = new LinkedList<>();
        this.tmpp = new PointF();
        this.animators = new LinkedList<>();
        this.fraction = 4;
        this.isRtl = ViewCompat.D(this) == 1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getTag().equals(getContext().getString(R.string.entry_bg_tag))) {
                this.backgrounds.add(childAt);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.layout = true;
        Boolean bool = this.pendingGo;
        if (bool != null) {
            go(bool.booleanValue());
        }
    }
}
