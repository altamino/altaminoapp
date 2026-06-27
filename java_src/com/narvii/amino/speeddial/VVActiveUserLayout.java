package com.narvii.amino.speeddial;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.support.transition.ChangeBounds;
import android.support.transition.Fade;
import android.support.transition.TransitionManager;
import android.support.transition.TransitionSet;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.model.User;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Random;

/* loaded from: classes2.dex */
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

    public VVActiveUserLayout(Context context) {
        this(context, null);
    }

    public VVActiveUserLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.users = new ArrayList();
        this.oneUserSize = 0;
        this.twoUserSize = 0;
        this.pendingSpeakingUids = new LinkedList();
        this.random = new Random();
        this.users = new ArrayList();
        this.speakingAnimator = ValueAnimator.ofInt(0, 1);
        this.speakingAnimator.setDuration(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
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

    public void updateUserList(List<User> list) {
        if (list == null || Utils.isEqualsNotNull(list, this.users)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.users.size(); i++) {
            User user = this.users.get(i);
            if (Utils.containsId(list, user.id())) {
                arrayList.add(user);
            }
        }
        if (!Utils.containsId(arrayList, this.curRunningUid)) {
            startSpeakingAnimation();
        }
        for (int i2 = 0; i2 < Math.min(list.size(), 4); i2++) {
            User user2 = list.get(i2);
            if (!Utils.containsId(arrayList, user2.id())) {
                arrayList.add(user2);
            }
        }
        this.users.clear();
        List<User> list2 = this.users;
        int size = arrayList.size();
        Collection collectionSubList = arrayList;
        if (size > 4) {
            collectionSubList = arrayList.subList(0, 4);
        }
        list2.addAll(collectionSubList);
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            Object tag = childAt.getTag(R.id.speed_dial_vv_uid);
            if ((tag instanceof String) && !Utils.containsId(this.users, (String) tag)) {
                arrayList2.add(childAt);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            removeView((View) it.next());
        }
        int i4 = 0;
        while (i4 < this.users.size()) {
            User user3 = this.users.get(i4);
            int mappedUserViewIndex = getMappedUserViewIndex(user3);
            View childAt2 = getChildAt(mappedUserViewIndex);
            if (childAt2 != null) {
                if (mappedUserViewIndex != i4) {
                    removeView(childAt2);
                    childAt2.setVisibility(getChildCount() == 0 ? 0 : 4);
                    addView(childAt2, i4 < getChildCount() ? i4 : -1);
                }
                updateItemView(childAt2, user3);
            } else {
                View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_vv_user, (ViewGroup) this, false);
                viewInflate.setTag(R.id.speed_dial_vv_uid, user3.uid());
                updateItemView(viewInflate, user3);
                viewInflate.setVisibility(getChildCount() == 0 ? 0 : 4);
                ((UserSpeakingView) viewInflate.findViewById(R.id.ripple)).setVolumeLevel(0);
                addView(viewInflate, i4 < getChildCount() ? i4 : -1);
            }
            i4++;
        }
        startAnimation();
        if (this.speakingAnimator.isRunning()) {
            return;
        }
        this.speakingAnimator.start();
    }

    private void startAnimation() {
        int i;
        int i2;
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(100L);
        Fade fade = new Fade(1);
        fade.setDuration(200L);
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(fade).addTransition(changeBounds);
        TransitionManager.beginDelayedTransition(this, transitionSet);
        int childCount = getChildCount();
        if (this.viewHeight == 0) {
            this.viewHeight = getContext().getResources().getDimensionPixelSize(R.dimen.live_square_item_size);
        }
        if (this.viewWidth == 0) {
            this.viewWidth = getContext().getResources().getDimensionPixelSize(R.dimen.live_square_item_size);
        }
        int iMin = Math.min(this.viewWidth, this.viewHeight) - (getPaddingTop() * 2);
        int i3 = (int) (iMin * (childCount == 1 ? RATIO_ONE_USER : RATIO_TWO_USER));
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            childAt.setVisibility(0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            marginLayoutParams.width = i3;
            marginLayoutParams.height = i3;
            if (childCount == 1) {
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = (iMin / 2) - (i3 / 2);
                } else {
                    marginLayoutParams.leftMargin = (iMin / 2) - (i3 / 2);
                }
                marginLayoutParams.topMargin = (iMin / 2) - (i3 / 2);
            } else if (childCount == 2) {
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = (i4 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i3 / 2);
                } else {
                    marginLayoutParams.leftMargin = (i4 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i3 / 2);
                }
                marginLayoutParams.topMargin = (iMin / 2) - (i3 / 2);
            } else if (childCount == 3) {
                if (Utils.isRtl()) {
                    if (i4 == 2) {
                        i2 = iMin / 2;
                    } else {
                        i2 = i4 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4;
                    }
                    marginLayoutParams.rightMargin = i2 - (i3 / 2);
                } else {
                    if (i4 == 2) {
                        i = iMin / 2;
                    } else {
                        i = i4 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4;
                    }
                    marginLayoutParams.leftMargin = i - (i3 / 2);
                }
                marginLayoutParams.topMargin = (i4 < 2 ? (iMin * 3) / 4 : iMin / 4) - (i3 / 2);
            } else {
                if (Utils.isRtl()) {
                    marginLayoutParams.rightMargin = (i4 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i3 / 2);
                } else {
                    marginLayoutParams.leftMargin = (i4 % 2 == 0 ? iMin / 4 : (iMin * 3) / 4) - (i3 / 2);
                }
                marginLayoutParams.topMargin = (i4 < 2 ? (iMin * 3) / 4 : iMin / 4) - (i3 / 2);
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSpeakingAnimation() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        int iNextInt = this.random.nextInt(10) % childCount;
        int i = 0;
        while (i < getChildCount()) {
            View childAt = getChildAt(i);
            UserSpeakingView userSpeakingView = (UserSpeakingView) childAt.findViewById(R.id.ripple);
            this.curRunningUid = (String) childAt.getTag(R.id.speed_dial_vv_uid);
            userSpeakingView.setVolumeLevel(i == iNextInt ? 3 : 0);
            NVImageView nVImageView = (NVImageView) childAt.findViewById(R.id.avatar);
            User userById = getUserById(this.curRunningUid);
            nVImageView.strokeColor = getResources().getColor((userById == null || !userById.isSubscribeMemberShip() || i == iNextInt) ? i == iNextInt ? R.color.avatar_stroke_speaking : R.color.avatar_stroke_normal : R.color.avatar_stroke_membership);
            i++;
        }
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

    private void updateItemView(View view, User user) {
        if (view == null || user == null) {
            return;
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.avatar);
        nVImageView.strokeColor = getResources().getColor(user.isSubscribeMemberShip() ? R.color.avatar_stroke_membership : R.color.avatar_stroke_normal);
        nVImageView.setImageUrl(user.icon());
    }

    private int getMappedUserViewIndex(User user) {
        if (user == null) {
            return -1;
        }
        for (int i = 0; i < getChildCount(); i++) {
            Object tag = getChildAt(i).getTag(R.id.speed_dial_vv_uid);
            if ((tag instanceof String) && Utils.isEqualsNotNull(user.uid(), (String) tag)) {
                return i;
            }
        }
        return -1;
    }

    private boolean containeCurUser(User user) {
        if (user == null) {
            return false;
        }
        for (int i = 0; i < getChildCount(); i++) {
            Object tag = getChildAt(i).getTag(R.id.speed_dial_vv_uid);
            if ((tag instanceof String) && Utils.isEqualsNotNull(user.uid(), (String) tag)) {
                return true;
            }
        }
        return false;
    }

    public void addUser() {
        User user = new User();
        user.uid = String.valueOf(this.users.size());
        user.icon = "https://s1.narvii.com/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg";
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

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.viewWidth = i;
        this.viewHeight = i2;
    }
}
