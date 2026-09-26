package com.narvii.amino.speeddial;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.ChangeBounds;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.narvii.amino.master.R;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class VVActiveUserLayout extends FrameLayout {
    private static final int DURATION_SPEAKING = 3000;
    private static final int LIMIT_COUNT = 4;
    private static final float RATIO_ONE_USER = 0.48f;
    private static final float RATIO_TWO_USER = 0.4f;
    private String curRunningUid;
    private int oneUserSize;
    Queue<String> pendingSpeakingUids;
    Random random;
    private ValueAnimator speakingAnimator;
    private int twoUserSize;
    List<User> users;
    private int viewHeight;
    private int viewWidth;

    public VVActiveUserLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean containeCurUser(User user) {
        if (user == null) {
            return false;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            Object tag = getChildAt(i10).getTag(R.id.speed_dial_vv_uid);
            if ((tag instanceof String) && Utils.isEqualsNotNull(user.uid(), (String) tag)) {
                return true;
            }
        }
        return false;
    }

    private int getMappedUserViewIndex(User user) {
        if (user == null) {
            return -1;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            Object tag = getChildAt(i10).getTag(R.id.speed_dial_vv_uid);
            if ((tag instanceof String) && Utils.isEqualsNotNull(user.uid(), (String) tag)) {
                return i10;
            }
        }
        return -1;
    }

    public VVActiveUserLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.users = new ArrayList();
        this.oneUserSize = 0;
        this.twoUserSize = 0;
        this.pendingSpeakingUids = new LinkedList();
        this.random = new Random();
        this.users = new ArrayList();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 1);
        this.speakingAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(3000L);
        this.speakingAnimator.setRepeatCount(-1);
        this.speakingAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.amino.speeddial.VVActiveUserLayout.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                VVActiveUserLayout.this.startSpeakingAnimation();
            }
        });
    }

    private int getRunningIndex(String str) {
        List<User> list = this.users;
        if (list != null && list.size() != 0) {
            for (User user : this.users) {
                if (Utils.isEqualsNotNull(user.uid(), str)) {
                    return this.users.indexOf(user);
                }
            }
        }
        return -1;
    }

    private User getUserById(String str) {
        List<User> list = this.users;
        if (list != null && list.size() != 0) {
            for (User user : this.users) {
                if (Utils.isEqualsNotNull(user.uid(), str)) {
                    return user;
                }
            }
        }
        return null;
    }

    private void startAnimation() {
        int i10;
        int i11;
        int i12;
        int i13;
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.Y(100L);
        Fade fade = new Fade(1);
        fade.Y(200L);
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.r0(0);
        transitionSet.j0(fade).j0(changeBounds);
        TransitionManager.b(this, transitionSet);
        int childCount = getChildCount();
        if (this.viewHeight == 0) {
            this.viewHeight = getContext().getResources().getDimensionPixelSize(R.dimen.live_square_item_size);
        }
        if (this.viewWidth == 0) {
            this.viewWidth = getContext().getResources().getDimensionPixelSize(R.dimen.live_square_item_size);
        }
        int iMin = Math.min(this.viewWidth, this.viewHeight) - (getPaddingTop() * 2);
        int i14 = (int) (iMin * (childCount == 1 ? RATIO_ONE_USER : RATIO_TWO_USER));
        int i15 = 0;
        while (i15 < childCount) {
            View childAt = getChildAt(i15);
            childAt.setVisibility(0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            marginLayoutParams.width = i14;
            marginLayoutParams.height = i14;
            if (childCount == 1) {
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = (iMin / 2) - (i14 / 2);
                } else {
                    marginLayoutParams.leftMargin = (iMin / 2) - (i14 / 2);
                }
                marginLayoutParams.topMargin = (iMin / 2) - (i14 / 2);
            } else if (childCount == 2) {
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = (i15 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i14 / 2);
                } else {
                    marginLayoutParams.leftMargin = (i15 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i14 / 2);
                }
                marginLayoutParams.topMargin = (iMin / 2) - (i14 / 2);
            } else if (childCount == 3) {
                if (Utils.isRtl()) {
                    if (i15 == 2) {
                        i12 = iMin / 2;
                        i13 = i14 / 2;
                    } else {
                        i12 = i15 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4;
                        i13 = i14 / 2;
                    }
                    marginLayoutParams.rightMargin = i12 - i13;
                } else {
                    if (i15 == 2) {
                        i10 = iMin / 2;
                        i11 = i14 / 2;
                    } else {
                        i10 = i15 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4;
                        i11 = i14 / 2;
                    }
                    marginLayoutParams.leftMargin = i10 - i11;
                }
                marginLayoutParams.topMargin = (i15 < 2 ? (iMin * 3) / 4 : iMin / 4) - (i14 / 2);
            } else {
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = (i15 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i14 / 2);
                } else {
                    marginLayoutParams.leftMargin = (i15 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i14 / 2);
                }
                marginLayoutParams.topMargin = (i15 < 2 ? (iMin * 3) / 4 : iMin / 4) - (i14 / 2);
            }
            i15++;
        }
    }

    private void updateItemView(View view, User user) {
        if (view == null || user == null) {
            return;
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.avatar);
        nVImageView.strokeColor = getResources().getColor(user.isSubscribeMemberShip() ? R.color.avatar_stroke_membership : R.color.avatar_stroke_normal);
        nVImageView.setImageUrl(user.icon());
    }

    public void addUser() {
        User user = new User();
        user.uid = String.valueOf(this.users.size());
        user.icon = "https://s1.altamino.top/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg";
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.users);
        arrayList.add(user);
        updateUserList(arrayList);
    }

    public void removeUser() {
        int iNextInt;
        int size = this.users.size();
        if (size > 0 && (iNextInt = this.random.nextInt(size)) <= size) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.users);
            arrayList.remove(iNextInt);
            updateUserList(arrayList);
        }
    }

    public void updateUserList(List<User> list) {
        if (list == null || Utils.isEqualsNotNull(list, this.users)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.users.size(); i10++) {
            User user = this.users.get(i10);
            if (Utils.containsId(list, user.id())) {
                arrayList.add(user);
            }
        }
        if (!Utils.containsId(arrayList, this.curRunningUid)) {
            startSpeakingAnimation();
        }
        for (int i11 = 0; i11 < Math.min(list.size(), 4); i11++) {
            User user2 = list.get(i11);
            if (!Utils.containsId(arrayList, user2.id())) {
                arrayList.add(user2);
            }
        }
        this.users.clear();
        List<User> list2 = this.users;
        int size = arrayList.size();
        List listSubList = arrayList;
        if (size > 4) {
            listSubList = arrayList.subList(0, 4);
        }
        list2.addAll(listSubList);
        ArrayList arrayList2 = new ArrayList();
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            Object tag = childAt.getTag(R.id.speed_dial_vv_uid);
            if ((tag instanceof String) && !Utils.containsId(this.users, (String) tag)) {
                arrayList2.add(childAt);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            removeView((View) it.next());
        }
        int i13 = 0;
        while (i13 < this.users.size()) {
            User user3 = this.users.get(i13);
            int mappedUserViewIndex = getMappedUserViewIndex(user3);
            View childAt2 = getChildAt(mappedUserViewIndex);
            if (childAt2 != null) {
                if (mappedUserViewIndex != i13) {
                    removeView(childAt2);
                    childAt2.setVisibility(getChildCount() == 0 ? 0 : 4);
                    addView(childAt2, i13 < getChildCount() ? i13 : -1);
                }
                updateItemView(childAt2, user3);
            } else {
                View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_vv_user, (ViewGroup) this, false);
                viewInflate.setTag(R.id.speed_dial_vv_uid, user3.uid());
                updateItemView(viewInflate, user3);
                viewInflate.setVisibility(getChildCount() == 0 ? 0 : 4);
                ((UserSpeakingView) viewInflate.findViewById(R.id.ripple)).setVolumeLevel(0);
                addView(viewInflate, i13 < getChildCount() ? i13 : -1);
            }
            i13++;
        }
        startAnimation();
        if (this.speakingAnimator.isRunning()) {
            return;
        }
        this.speakingAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSpeakingAnimation() {
        int i10;
        int i11;
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        int iNextInt = this.random.nextInt(10) % childCount;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            UserSpeakingView userSpeakingView = (UserSpeakingView) childAt.findViewById(R.id.ripple);
            this.curRunningUid = (String) childAt.getTag(R.id.speed_dial_vv_uid);
            if (i12 == iNextInt) {
                i10 = 3;
            } else {
                i10 = 0;
            }
            userSpeakingView.setVolumeLevel(i10);
            NVImageView nVImageView = (NVImageView) childAt.findViewById(R.id.avatar);
            User userById = getUserById(this.curRunningUid);
            Resources resources = getResources();
            if (userById != null && userById.isSubscribeMemberShip() && i12 != iNextInt) {
                i11 = R.color.avatar_stroke_membership;
            } else if (i12 == iNextInt) {
                i11 = R.color.avatar_stroke_speaking;
            } else {
                i11 = R.color.avatar_stroke_normal;
            }
            nVImageView.strokeColor = resources.getColor(i11);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.viewWidth = i10;
        this.viewHeight = i11;
    }
}
