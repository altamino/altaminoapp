package com.narvii.influencer;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.text.DateFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class FanClubDetailFragment extends NVListFragment implements NotificationListener {
    private DateFormat dateFmt;
    FanClub fanClub;
    private FanClubHeaderAdapter fanClubHeaderAdapter;
    private RenewAdapter renewAdapter;

    class FanClubHeaderAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.check_detail) {
                if (view2 == null || view2.getId() != R.id.renew) {
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                if (FanClubDetailFragment.this.fanClub.isClosed()) {
                    FanClubDetailFragment.this.deleteWhenClosed();
                    return true;
                }
                FanClub fanClub = FanClubDetailFragment.this.fanClub;
                FanClubSubscriptionDialog.showSubscriptionDialog(this, fanClub.targetUid, fanClub.ndcId, true, "Fan Club Detailed Page");
                return true;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://x" + FanClubDetailFragment.this.fanClub.ndcId + c.FORWARD_SLASH_STRING + NVObject.objectTypeName(0) + c.FORWARD_SLASH_STRING + FanClubDetailFragment.this.fanClub.targetUid));
            intent.putExtra("__model", false);
            try {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            } catch (Exception unused) {
            }
            return true;
        }

        public FanClubHeaderAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            String string;
            boolean z6;
            int i12;
            String string2;
            View viewCreateView = createView(R.layout.item_fan_club_header, viewGroup, view);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.fan_club_icon);
            if (FanClubDetailFragment.this.fanClub.isActive()) {
                i11 = R.drawable.ic_fan_club_logo;
            } else {
                i11 = R.drawable.ic_fan_club_logo_grey;
            }
            imageView.setImageResource(i11);
            User user = FanClubDetailFragment.this.fanClub.targetUserProfile;
            TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
            String string3 = null;
            boolean z10 = false;
            if (user == null) {
                string = null;
            } else {
                string = FanClubDetailFragment.this.getString(R.string.s_fan_club, user.nickname());
            }
            textView.setText(string);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.fans_since);
            if (FanClubDetailFragment.this.dateFmt == null) {
                FanClubDetailFragment.this.dateFmt = DateFormat.getDateInstance(2, Locale.getDefault());
            }
            if (FanClubDetailFragment.this.fanClub.isActive()) {
                FanClubDetailFragment fanClubDetailFragment = FanClubDetailFragment.this;
                if (fanClubDetailFragment.fanClub.createdTime == null) {
                    string2 = null;
                } else {
                    string2 = fanClubDetailFragment.getString(R.string.fan_since_date, fanClubDetailFragment.dateFmt.format(FanClubDetailFragment.this.fanClub.createdTime));
                }
                textView2.setText(string2);
            } else {
                int iDaysExpired = FanClubDetailFragment.this.fanClub.daysExpired();
                if (iDaysExpired == 0) {
                    textView2.setText(R.string.fan_club_expired_0_day);
                } else if (iDaysExpired == 1) {
                    textView2.setText(R.string.fan_club_expired_1_day);
                } else if (iDaysExpired > 1) {
                    textView2.setText(getContext().getString(R.string.fan_club_expired_n_day, Integer.valueOf(iDaysExpired)));
                }
            }
            if (textView2.getText() != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            ViewUtils.show(textView2, z6);
            if (FanClubDetailFragment.this.fanClub.isActive()) {
                FanClub fanClub = FanClubDetailFragment.this.fanClub;
                if (!fanClub.isAutoRenew) {
                    int iExpiringDays = fanClub.expiringDays();
                    if (iExpiringDays == 0) {
                        string3 = FanClubDetailFragment.this.getString(R.string.membership_status_expiring_in_0_day);
                    } else if (iExpiringDays == 1) {
                        string3 = FanClubDetailFragment.this.getString(R.string.membership_status_expiring_in_1_day);
                    } else if (iExpiringDays > 0 && iExpiringDays <= 7) {
                        string3 = FanClubDetailFragment.this.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays));
                    }
                }
            }
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.expiring);
            textView3.setText(string3);
            if (string3 != null) {
                z10 = true;
            }
            ViewUtils.show(textView3, z10);
            viewCreateView.findViewById(R.id.check_detail).setOnClickListener(this.subviewClickListener);
            View viewFindViewById = viewCreateView.findViewById(R.id.renew);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            if (FanClubDetailFragment.this.fanClub.isClosed()) {
                i12 = R.drawable.selector_fans_club_closed;
            } else {
                i12 = R.drawable.selector_become_fans;
            }
            viewFindViewById.setBackgroundResource(i12);
            ViewUtils.show(viewFindViewById, !FanClubDetailFragment.this.fanClub.isAutoRenew);
            return viewCreateView;
        }
    }

    class RenewAdapter extends PrefsAdapter {
        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public RenewAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            if (FanClubDetailFragment.this.fanClub.isActive()) {
                PrefsToggle prefsToggle = new PrefsToggle(R.string.fans_auto_renew, FanClubDetailFragment.this.getString(R.string.fans_auto_renew));
                prefsToggle.setTextSingleLine(false);
                prefsToggle.on = FanClubDetailFragment.this.fanClub.isAutoRenew;
                prefsToggle.callback = new Callback<PrefsToggle>() { // from class: com.narvii.influencer.FanClubDetailFragment.RenewAdapter.1
                    @Override // com.narvii.util.Callback
                    public void call(PrefsToggle prefsToggle2) {
                        if (FanClubDetailFragment.this.fanClub.isClosed()) {
                            FanClubDetailFragment.this.deleteWhenClosed();
                            return;
                        }
                        FanClubDetailFragment fanClubDetailFragment = FanClubDetailFragment.this;
                        if (!fanClubDetailFragment.fanClub.isAutoRenew) {
                            fanClubDetailFragment.changeAutoRenewRequest(true);
                            return;
                        }
                        AlertDialog alertDialog = new AlertDialog(RenewAdapter.this.getContext());
                        alertDialog.setTitle(R.string.push_setting_confirm);
                        alertDialog.setMessage(R.string.fan_club_renew_close_warning);
                        alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.influencer.FanClubDetailFragment.RenewAdapter.1.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                RenewAdapter.this.notifyDataSetChanged();
                            }
                        });
                        alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.influencer.FanClubDetailFragment.RenewAdapter.1.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                FanClubDetailFragment.this.changeAutoRenewRequest(false);
                            }
                        });
                        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.influencer.FanClubDetailFragment.RenewAdapter.1.3
                            @Override // android.content.DialogInterface.OnCancelListener
                            public void onCancel(DialogInterface dialogInterface) {
                                RenewAdapter.this.notifyDataSetChanged();
                            }
                        });
                        alertDialog.show();
                    }
                };
                list.add(prefsToggle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeAutoRenewRequest(boolean z6) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("isAutoRenew", z6);
        final int i10 = this.fanClub.ndcId;
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().communityId(i10).path("influencer/" + this.fanClub.targetUid + "/config").param("paymentContext", objectNodeCreateObjectNode).build(), new ApiResponseListener<FanClubResponse>(FanClubResponse.class) { // from class: com.narvii.influencer.FanClubDetailFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FanClubResponse fanClubResponse) throws Exception {
                super.onFinish(apiRequest, fanClubResponse);
                FanClub fanClub = fanClubResponse.fanClub;
                if (fanClub != null) {
                    FanClubDetailFragment fanClubDetailFragment = FanClubDetailFragment.this;
                    fanClubDetailFragment.fanClub = fanClub;
                    fanClub.ndcId = i10;
                    if (fanClubDetailFragment.renewAdapter != null) {
                        FanClubDetailFragment.this.renewAdapter.notifyDataSetChanged();
                    }
                    FanClub fanClub2 = (FanClub) FanClubDetailFragment.this.fanClub.m1622clone();
                    ((AccountService) FanClubDetailFragment.this.getService("account")).updateFanClub(i10, fanClub2);
                    FanClubDetailFragment.this.sendNotification(new Notification("update", fanClub2));
                    progressDialog.dismiss();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                NVToast.makeText(FanClubDetailFragment.this.getContext(), str, 0).show();
                if (FanClubDetailFragment.this.renewAdapter != null) {
                    FanClubDetailFragment.this.renewAdapter.notifyDataSetChanged();
                }
                progressDialog.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteWhenClosed() {
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.fan_club_closed_to_delete);
        alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.influencer.FanClubDetailFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FanClubDetailFragment.this.renewAdapter != null) {
                    FanClubDetailFragment.this.renewAdapter.notifyDataSetChanged();
                }
            }
        });
        alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.influencer.FanClubDetailFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProgressDialog progressDialog = new ProgressDialog(FanClubDetailFragment.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.influencer.FanClubDetailFragment.2.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        AccountService accountService = (AccountService) FanClubDetailFragment.this.getService("account");
                        FanClub fanClub = FanClubDetailFragment.this.fanClub;
                        accountService.deleteFanClub(fanClub.ndcId, fanClub);
                        FanClubDetailFragment.this.finish();
                        ((NotificationCenter) FanClubDetailFragment.this.getService("notification")).sendNotification(new Notification("delete", FanClubDetailFragment.this.fanClub));
                    }
                };
                progressDialog.show();
                ((ApiService) FanClubDetailFragment.this.getService("api")).exec(ApiRequest.builder().delete().communityId(FanClubDetailFragment.this.fanClub.ndcId).path("/influencer/" + FanClubDetailFragment.this.fanClub.targetUid + "/subscribe").build(), progressDialog.dismissListener);
            }
        });
        alertDialog.show();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        FanClubHeaderAdapter fanClubHeaderAdapter = new FanClubHeaderAdapter(this);
        this.fanClubHeaderAdapter = fanClubHeaderAdapter;
        mergeAdapter.addAdapter(fanClubHeaderAdapter);
        RenewAdapter renewAdapter = new RenewAdapter(this);
        this.renewAdapter = renewAdapter;
        mergeAdapter.addAdapter(renewAdapter);
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(mergeAdapter);
        return dividerAdapter;
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13785881);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.action == "update") {
            Object obj = notification.obj;
            if (obj instanceof FanClub) {
                FanClub fanClub = this.fanClub;
                if (fanClub.ndcId == ((FanClub) obj).ndcId && Utils.isEqualsNotNull(fanClub.targetUid, ((FanClub) obj).targetUid)) {
                    this.fanClub = (FanClub) notification.obj;
                    RenewAdapter renewAdapter = this.renewAdapter;
                    if (renewAdapter != null) {
                        renewAdapter.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        if (bundle != null) {
            this.fanClub = (FanClub) JacksonUtils.readAs(bundle.getString("fanClub"), FanClub.class);
        } else {
            this.fanClub = (FanClub) JacksonUtils.readAs(getStringParam("fanClub"), FanClub.class);
        }
        FanClub fanClub = this.fanClub;
        if (fanClub == null) {
            finish();
            return;
        }
        if (fanClub.ndcId == -1) {
            ConfigService configService = (ConfigService) getService("config");
            this.fanClub.ndcId = configService.getCommunityId();
        }
        if (this.fanClub.ndcId <= 0) {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(0);
        listView.setDivider(null);
        ViewUtils.setTopBottomPrefColor(listView, getContext());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("fanClub", JacksonUtils.writeAsString(this.fanClub));
    }
}
