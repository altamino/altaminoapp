package com.narvii.onlinestatus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.model.MoodStickerCollection;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.picker.StickerPickerTabFragment;
import com.narvii.monetization.sticker.picker.StickerSelectListener;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.MoodView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes7.dex */
public class ChooseMoodFragment extends NVFragment {
    boolean changed;
    MembershipService membershipService;
    Sticker moodSticker;
    private MoodView moodView;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.onlinestatus.ChooseMoodFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                ChooseMoodFragment.this.updateAvatarLayout();
                ChooseMoodFragment.this.resetMoodSticker();
            }
        }
    };
    public TextView reset;
    Sticker selectedSticker;
    StickerCollection selectedStickerCollection;
    private StickerPickerTabFragment stickerPickerTabFragment;
    private User user;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetMoodSticker() {
        MoodView moodView = this.moodView;
        if (moodView != null) {
            moodView.setMoodSticker(this.user, this.selectedSticker, this.membershipService.isMembership());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAvatarLayout() {
        if (getView() == null) {
            return;
        }
        ((UserAvatarLayout) getView().findViewById(R.id.user_avatar_layout)).setUser(this.user, this.membershipService.isMembership());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.choose_your_moods);
        this.membershipService = (MembershipService) getService("membership");
        this.user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        Sticker sticker = (Sticker) JacksonUtils.readAs(getStringParam("moodSticker"), Sticker.class);
        this.moodSticker = sticker;
        this.selectedSticker = sticker;
        if (this.user == null) {
            getActivity().finish();
            return;
        }
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        if (getActivity().getActionBar().getCustomView() != null) {
            setActionBarRightButton(R.string.done, NVActivity.getRightButtonBackground(-13528321), new View.OnClickListener() { // from class: com.narvii.onlinestatus.ChooseMoodFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ChooseMoodFragment chooseMoodFragment = ChooseMoodFragment.this;
                    if (!chooseMoodFragment.changed) {
                        chooseMoodFragment.finish();
                        return;
                    }
                    ProgressDialog progressDialog = new ProgressDialog(ChooseMoodFragment.this.getContext());
                    progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.onlinestatus.ChooseMoodFragment.2.1
                        /* JADX WARN: Code duplicated, block: B:18:0x0059  */
                        @Override // com.narvii.util.Callback
                        public void call(ApiResponse apiResponse) {
                            String str;
                            AccountService accountService = (AccountService) ChooseMoodFragment.this.getService("account");
                            accountService.updateOnlineStatus(1, apiResponse.timestamp, true);
                            User userProfile = accountService.getUserProfile();
                            userProfile.onlineStatus = 1;
                            userProfile.moodSticker = ChooseMoodFragment.this.selectedSticker;
                            accountService.updateProfile(userProfile, apiResponse.timestamp, true);
                            if (!Sticker.isEmpty(ChooseMoodFragment.this.selectedSticker)) {
                                StickerCollection stickerCollection = ChooseMoodFragment.this.selectedStickerCollection;
                                if (stickerCollection == null) {
                                    str = "Sticker";
                                } else {
                                    int i10 = stickerCollection.collectionType;
                                    if (i10 == 1) {
                                        str = "Sticker Sets";
                                    } else if (i10 == 2) {
                                        str = "Custom Sticker";
                                    } else if (i10 == 3) {
                                        str = "Shared Sticker";
                                    } else if (MoodStickerCollection.MOOD_COLLECTION_ID.equals(stickerCollection.collectionId)) {
                                        str = "Emoji Sticker";
                                    } else {
                                        str = "Sticker";
                                    }
                                }
                                ((StatisticsService) ChooseMoodFragment.this.getService("statistics")).event("Add a mood").userPropInc("Add a mood Total").param(EventConstants.CommentPost.TYPE, str).userProp("Online Mood", true);
                            }
                            LiveLayerService liveLayerService = (LiveLayerService) ChooseMoodFragment.this.getService("liveLayer");
                            if (liveLayerService != null) {
                                liveLayerService.refreshOnlineMembers();
                            }
                            ((NotificationCenter) ChooseMoodFragment.this.getService("notification")).sendNotification(new Notification("update", userProfile));
                            ChooseMoodFragment.this.finish();
                        }
                    };
                    progressDialog.show();
                    ApiRequest.Builder builderPath = ApiRequest.builder().post().path("user-profile/" + ChooseMoodFragment.this.user.id() + "/online-status");
                    if (ChooseMoodFragment.this.selectedSticker == null) {
                        builderPath.param("moodStickerId", null);
                    } else {
                        builderPath.param("onlineStatus", 1).param("moodStickerId", ChooseMoodFragment.this.selectedSticker.id());
                    }
                    ((ApiService) ChooseMoodFragment.this.getService("api")).exec(builderPath.build(), progressDialog.dismissListener);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_mood_customize, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        boolean z6;
        super.onViewCreated(view, bundle);
        updateAvatarLayout();
        MoodView moodView = (MoodView) view.findViewById(R.id.mood);
        this.moodView = moodView;
        moodView.setAnimate(true);
        resetMoodSticker();
        this.moodView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.ChooseMoodFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChooseMoodFragment chooseMoodFragment = ChooseMoodFragment.this;
                if (chooseMoodFragment.selectedSticker != null) {
                    chooseMoodFragment.moodView.shakeTouch();
                }
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.reset);
        this.reset = textView;
        if (this.moodSticker != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        textView.setEnabled(z6);
        this.reset.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.onlinestatus.ChooseMoodFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ChooseMoodFragment chooseMoodFragment = ChooseMoodFragment.this;
                chooseMoodFragment.changed = true;
                chooseMoodFragment.selectedSticker = null;
                chooseMoodFragment.resetMoodSticker();
                ChooseMoodFragment.this.reset.setEnabled(false);
                if (ChooseMoodFragment.this.stickerPickerTabFragment != null) {
                    ChooseMoodFragment.this.stickerPickerTabFragment.notifyPagerSelectedStickerChanged(null);
                }
            }
        });
        StickerPickerTabFragment stickerPickerTabFragment = (StickerPickerTabFragment) getFragmentManager().m0("stickPicker");
        this.stickerPickerTabFragment = stickerPickerTabFragment;
        if (stickerPickerTabFragment == null) {
            this.stickerPickerTabFragment = new StickerPickerTabFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("tabBottom", true);
            bundle2.putBoolean("showSelected", true);
            bundle2.putString("source", "Profile");
            this.stickerPickerTabFragment.setArguments(bundle2);
            getFragmentManager().q().c(R.id.stick_picker, this.stickerPickerTabFragment, "stickPicker").k();
        }
        this.stickerPickerTabFragment.setCurrentSticker(this.moodSticker);
        this.stickerPickerTabFragment.setStickerSelectListener(new StickerSelectListener() { // from class: com.narvii.onlinestatus.ChooseMoodFragment.5
            @Override // com.narvii.monetization.sticker.picker.StickerSelectListener
            public void onStickerSelected(Sticker sticker, StickerCollection stickerCollection) {
                ChooseMoodFragment chooseMoodFragment = ChooseMoodFragment.this;
                chooseMoodFragment.changed = true;
                chooseMoodFragment.selectedSticker = sticker;
                chooseMoodFragment.selectedStickerCollection = stickerCollection;
                chooseMoodFragment.resetMoodSticker();
                ChooseMoodFragment.this.moodView.shakeCrazily();
                ChooseMoodFragment.this.reset.setEnabled(true);
            }
        });
    }
}
