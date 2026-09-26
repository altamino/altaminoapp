package com.narvii.poweruser.history;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.StateSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public class ModerationHistoryBaseAdapter extends NVPagedAdapter<ModerationHistory, ModerationHistoryListResponse> {
    DateTimeFormatter dateTimeFormatter;

    public ModerationHistoryBaseAdapter(NVContext nVContext) {
        super(nVContext, 1);
        this.dateTimeFormatter = new DateTimeFormatter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ModerationHistory> dataType() {
        return ModerationHistory.class;
    }

    protected boolean disableAllItem() {
        return false;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected String objectId() {
        return null;
    }

    protected int objectType() {
        return -1;
    }

    protected String operatorUid() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ModerationHistoryListResponse> responseType() {
        return ModerationHistoryListResponse.class;
    }

    private Drawable getOperationLevelDrawable(ModerationHistory moderationHistory) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Resources resources = getContext().getResources();
        int i10 = R.drawable.tag_rounded_bg;
        GradientDrawable gradientDrawable = (GradientDrawable) resources.getDrawable(i10);
        GradientDrawable gradientDrawable2 = (GradientDrawable) getContext().getResources().getDrawable(i10).mutate();
        if (moderationHistory == null) {
            return gradientDrawable;
        }
        String str = moderationHistory.operationLevel;
        int color = getContext().getResources().getColor(R.color.moderation_operation_level_default);
        int color2 = getContext().getResources().getColor(R.color.moderation_operation_level_default_pressed);
        if (str.equals(ModerationHistory.LEVEL_DANGER)) {
            color = getContext().getResources().getColor(R.color.moderation_operation_level_danger);
            color2 = getContext().getResources().getColor(R.color.moderation_operation_level_danger_pressed);
        } else if (str.equals("success")) {
            color = getContext().getResources().getColor(R.color.moderation_operation_level_success);
            color2 = getContext().getResources().getColor(R.color.moderation_operation_level_success_pressed);
        } else if (str.equals(ModerationHistory.LEVEL_WARNING)) {
            color = getContext().getResources().getColor(R.color.moderation_operation_level_warning);
            color2 = getContext().getResources().getColor(R.color.moderation_operation_level_warning_pressed);
        }
        gradientDrawable.setColor(color);
        gradientDrawable2.setColor(color2);
        if (TextUtils.isEmpty(moderationHistory.objectUrl)) {
            return gradientDrawable;
        }
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        return stateListDrawable;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderCommunityId = new ApiRequest.Builder().path("/admin/operation").communityId(getCid());
        if (objectId() != null && objectType() != -1) {
            builderCommunityId.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, objectId());
            builderCommunityId.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(objectType()));
        }
        if (operatorUid() != null) {
            builderCommunityId.param("operatorUid", operatorUid());
        }
        return builderCommunityId.build();
    }

    protected int getCid() {
        return ((ConfigService) getService("config")).getCommunityId();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        FragmentActivity activity;
        User user;
        ModerationHistory moderationHistory = (ModerationHistory) obj;
        View viewCreateView = createView(R.layout.item_modeartion_history, viewGroup, view);
        View viewFindViewById = viewCreateView.findViewById(R.id.avatar);
        if (viewFindViewById instanceof ThumbImageView) {
            User user2 = moderationHistory.author;
            if (user2 != null) {
                ((ThumbImageView) viewFindViewById).setImageUrl(user2.icon());
                if (!disableAllItem()) {
                    viewFindViewById.setOnClickListener(this.subviewClickListener);
                }
            } else {
                ((ThumbImageView) viewFindViewById).setImageUrl(null);
            }
        }
        View viewFindViewById2 = viewCreateView.findViewById(R.id.nickname);
        if ((viewFindViewById2 instanceof NicknameView) && (user = moderationHistory.author) != null) {
            ((NicknameView) viewFindViewById2).setUser(user);
            if (!disableAllItem()) {
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
            }
        }
        View viewFindViewById3 = viewCreateView.findViewById(R.id.logtime);
        if (viewFindViewById3 instanceof TextView) {
            ((TextView) viewFindViewById3).setText(this.dateTimeFormatter.format(moderationHistory.createdTime));
        }
        View viewFindViewById4 = viewCreateView.findViewById(R.id.operation_name);
        if (viewFindViewById4 instanceof TextView) {
            ((TextView) viewFindViewById4).setText(moderationHistory.operationName);
            viewFindViewById4.setBackgroundDrawable(getOperationLevelDrawable(moderationHistory));
            if (TextUtils.isEmpty(moderationHistory.objectUrl)) {
                viewFindViewById4.setForeground(new ColorDrawable(-2130706433));
            } else {
                viewFindViewById4.setForeground(null);
            }
            int iDpToPx = (int) Utils.dpToPx(getContext(), 120.0f);
            NVContext nVContext = this.context;
            if (nVContext instanceof NVFragment) {
                activity = ((NVFragment) nVContext).getActivity();
            } else {
                activity = nVContext instanceof NVActivity ? (NVActivity) nVContext : null;
            }
            if (activity != null) {
                iDpToPx = (int) (((Utils.getScreenSize(activity).x * 3) / 5.0f) - Utils.dpToPx(getContext(), 20.0f));
            }
            ((TextView) viewFindViewById4).setMaxWidth(iDpToPx);
        }
        View viewFindViewById5 = viewCreateView.findViewById(R.id.note);
        int i10 = 8;
        if (TextUtils.isEmpty(moderationHistory.operationDetail)) {
            viewFindViewById5.setVisibility(8);
        } else {
            viewFindViewById5.setVisibility(0);
        }
        if (viewFindViewById5 instanceof TextView) {
            ((TextView) viewFindViewById5).setText(moderationHistory.operationDetail);
        }
        viewCreateView.setTag(R.id.list_time_section_name, null);
        int i11 = moderationHistory.operation;
        boolean z6 = i11 == 267 || i11 == 205;
        ObjectNode objectNode = moderationHistory.refObject;
        String strNodeString = objectNode != null ? JacksonUtils.nodeString(objectNode, "nickname") : null;
        View viewFindViewById6 = viewCreateView.findViewById(R.id.target_container);
        if (moderationHistory.objectType == 0 && z6 && !TextUtils.isEmpty(strNodeString)) {
            i10 = 0;
        }
        viewFindViewById6.setVisibility(i10);
        viewFindViewById6.setOnClickListener(this.subviewClickListener);
        ((TextView) viewCreateView.findViewById(R.id.target_name)).setText(" " + strNodeString);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        super.refresh(i10 | 512, callback);
    }
}
