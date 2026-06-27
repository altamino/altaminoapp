package com.narvii.story;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.scene.BaseSceneListFragment;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.notification.StoryCheckEligible;
import com.narvii.scene.service.SceneDraftHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.statusbar.StatusBarUtils;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* loaded from: classes3.dex */
public class SceneListFragment extends BaseSceneListFragment implements NotificationListener {
    private ConfigService configService;
    private Button doneButton;
    private final View.OnClickListener doneListener = new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$SceneListFragment$qspdeRm423FZNSAHFg9mY39-ShA
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.lambda$new$0$SceneListFragment(view);
        }
    };
    private SceneDraftHelper sceneDraftHelper;

    @Override // com.narvii.scene.BaseSceneListFragment
    protected boolean useRoundCornerCover() {
        return true;
    }

    public /* synthetic */ void lambda$new$0$SceneListFragment(View view) {
        saveModify();
    }

    private void saveModify() {
        if (isEditMode()) {
            Intent intent = new Intent();
            intent.putExtra("sceneList", JacksonUtils.writeAsString(this.sceneList));
            setResult(-1, intent);
            finish();
            return;
        }
        this.sceneDraftHelper.correctCoverImage(this.sceneDraft, new Function1() { // from class: com.narvii.story.-$$Lambda$SceneListFragment$F5ExiayVE-K5GPgq_H9cf7zBIsk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f$0.lambda$saveModify$1$SceneListFragment((SceneDraft) obj);
            }
        });
    }

    public /* synthetic */ Unit lambda$saveModify$1$SceneListFragment(SceneDraft sceneDraft) {
        Intent intent = new Intent();
        intent.putExtra("sceneDraft", JacksonUtils.writeAsString(sceneDraft));
        setResult(-1, intent);
        finish();
        return null;
    }

    @Override // com.narvii.scene.BaseSceneListFragment, android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_btn, (ViewGroup) null);
        this.doneButton = (Button) viewInflate.findViewById(R.id.actionbar_right_btn_btn);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.doneButton.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(Utils.dpToPxInt(getContext(), 10.0f));
        } else {
            marginLayoutParams.rightMargin = Utils.dpToPxInt(getContext(), 10.0f);
        }
        this.doneButton.setText(R.string.done);
        this.doneButton.setTextColor(-1);
        this.doneButton.setBackground(NVActivity.getRightButtonBackground(SceneUtils.getStoryThemeColor(this, this.configService.getCommunityId())));
        this.doneButton.setLayoutParams(marginLayoutParams);
        this.doneButton.setOnClickListener(this.doneListener);
        menu.add(0, R.string.post_submit, 0, R.string.post_submit).setActionView(viewInflate).setShowAsAction(2);
    }

    @Override // com.narvii.scene.BaseSceneListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.configService = (ConfigService) getService("config");
        this.sceneDraftHelper = new SceneDraftHelper(this);
        StatusBarUtils.setSystemUiFlagLightStatusBar((NVContext) this, true);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.scene.BaseSceneListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
    }

    @Override // com.narvii.scene.BaseSceneListFragment, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification != null) {
            Object obj = notification.obj;
            if (obj instanceof StoryCheckEligible) {
                StoryCheckEligible storyCheckEligible = (StoryCheckEligible) obj;
                if (!TextUtils.equals(storyCheckEligible.id(), this.draftId)) {
                    return;
                }
                int i = storyCheckEligible.action;
                if (i == 1) {
                    checkActivation();
                } else if (i == 2) {
                    eligibleFail(storyCheckEligible.message);
                }
            }
        }
        super.onNotification(notification);
    }

    protected void eligibleFail(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(str);
        builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.story.-$$Lambda$SceneListFragment$XDfRcwqh_7sEi-g0P6Hg_wwCSNo
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$eligibleFail$2$SceneListFragment(dialogInterface);
            }
        });
        builder.show();
    }

    public /* synthetic */ void lambda$eligibleFail$2$SceneListFragment(DialogInterface dialogInterface) {
        sendNotification(new Notification("update", new StoryCheckEligible(this.draftId, 3, null)));
        finish();
    }

    protected void checkActivation() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.post_not_eligible);
        builder.setMessage(R.string.post_activate_account_first);
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setPositiveButton(R.string.post_activate_account, new DialogInterface.OnClickListener() { // from class: com.narvii.story.-$$Lambda$SceneListFragment$8aWrRIO_l_sUanAG7II_wZaShJc
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$checkActivation$3$SceneListFragment(dialogInterface, i);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.story.-$$Lambda$SceneListFragment$HnECCGbBlWi1DwUQkRfRMPhaTFw
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$checkActivation$4$SceneListFragment(dialogInterface);
            }
        });
        builder.show();
    }

    public /* synthetic */ void lambda$checkActivation$3$SceneListFragment(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
        finish();
    }

    public /* synthetic */ void lambda$checkActivation$4$SceneListFragment(DialogInterface dialogInterface) {
        sendNotification(new Notification("update", new StoryCheckEligible(this.draftId, 3, null)));
        finish();
    }
}
