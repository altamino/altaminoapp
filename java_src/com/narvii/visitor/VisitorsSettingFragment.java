package com.narvii.visitor;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.list.prefs.PrefsToggle;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.VisitorSetting;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.visitor.VisitorsSettingFragment;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: VisitorsSettingFragment.kt */
/* loaded from: classes3.dex */
public final class VisitorsSettingFragment extends NVListFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorsSettingFragment.class), "api", "getApi()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorsSettingFragment.class), "account", "getAccount()Lcom/narvii/account/AccountService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorsSettingFragment.class), "config", "getConfig()Lcom/narvii/config/ConfigService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorsSettingFragment.class), "adapter", "getAdapter()Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(VisitorsSettingFragment.class), "progressDialog", "getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;"))};
    public static final Companion Companion = new Companion(null);
    public static final int PROFILE_OPTION = 1;
    private HashMap _$_findViewCache;
    private boolean loadSuccess;
    private int notificationStatus;
    private int privacyMode;
    private ApiRequest privacyRequest;
    private final Lazy api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.visitor.VisitorsSettingFragment$api$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy account$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AccountService>() { // from class: com.narvii.visitor.VisitorsSettingFragment$account$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AccountService invoke() {
            return (AccountService) this.this$0.getService("account");
        }
    });
    private final Lazy config$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ConfigService>() { // from class: com.narvii.visitor.VisitorsSettingFragment$config$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ConfigService invoke() {
            return (ConfigService) this.this$0.getService("config");
        }
    });
    private final Lazy adapter$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Adapter>() { // from class: com.narvii.visitor.VisitorsSettingFragment$adapter$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final VisitorsSettingFragment.Adapter invoke() {
            VisitorsSettingFragment visitorsSettingFragment = this.this$0;
            return new VisitorsSettingFragment.Adapter(visitorsSettingFragment, visitorsSettingFragment);
        }
    });
    private final Lazy progressDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.visitor.VisitorsSettingFragment$progressDialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            return new ProgressDialog(this.this$0.getContext());
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final AccountService getAccount() {
        Lazy lazy = this.account$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (AccountService) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Adapter getAdapter() {
        Lazy lazy = this.adapter$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (Adapter) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ApiService) lazy.getValue();
    }

    private final ConfigService getConfig() {
        Lazy lazy = this.config$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ConfigService) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgressDialog() {
        Lazy lazy = this.progressDialog$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (ProgressDialog) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "RecentVisitorsSetting";
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: VisitorsSettingFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConfigService config = getConfig();
        Intrinsics.checkExpressionValueIsNotNull(config, "config");
        NVThemeFragment.setDarkNVTheme$default(this, config.getCommunityId() == 0, false, 2, null);
        setTitle(R.string.prefs_settings);
        AccountService account = getAccount();
        Intrinsics.checkExpressionValueIsNotNull(account, "account");
        this.privacyMode = account.getVisitorPrivacyMode();
        AccountService account2 = getAccount();
        Intrinsics.checkExpressionValueIsNotNull(account2, "account");
        this.notificationStatus = account2.getVisitorNotificationStatus();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        sendVisitorSettingRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return getAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VisitorsSettingFragment.kt */
    final class Adapter extends PrefsAdapter {
        private final Tag TEXT;
        private final Callback<PrefsToggle> switchCallback;
        final /* synthetic */ VisitorsSettingFragment this$0;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(VisitorsSettingFragment visitorsSettingFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = visitorsSettingFragment;
            this.TEXT = new Tag(MimeTypes.BASE_TYPE_TEXT);
            this.switchCallback = new Callback<PrefsToggle>() { // from class: com.narvii.visitor.VisitorsSettingFragment$Adapter$switchCallback$1
                @Override // com.narvii.util.Callback
                public final void call(PrefsToggle prefsToggle) {
                    this.this$0.sendPrivacyRequest(null, Integer.valueOf(prefsToggle.on ? 1 : 2));
                }
            };
        }

        public final Tag getTEXT() {
            return this.TEXT;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            if (list != null) {
                list.add(new PrefsSection(R.string.profile_visiting_options));
                list.add(new PrefsSelect(1, 1));
                list.add(new PrefsSelect(1, 2));
                list.add(this.TEXT);
                list.add(new PrefsSection(R.string.notifications_setting));
                PrefsToggle prefsToggle = new PrefsToggle(R.string.new_profile_visitors, this.this$0.getString(R.string.new_profile_visitors));
                prefsToggle.on = this.this$0.notificationStatus == 1;
                prefsToggle.desc = this.this$0.getString(R.string.new_profile_visitors_hint);
                prefsToggle.callback = this.switchCallback;
                prefsToggle.descColor = (int) (isDarkNVTheme() ? 2298478591L : 4283058762L);
                list.add(prefsToggle);
            }
        }

        public final Callback<PrefsToggle> getSwitchCallback() {
            return this.switchCallback;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.loadSuccess) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            VisitorsSettingFragment visitorsSettingFragment;
            int i2;
            final Object item = getItem(i);
            if (item instanceof PrefsSelect) {
                View viewCreateView = createView(R.layout.setting_selected_item, viewGroup, view);
                if (viewCreateView == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
                }
                FrameLayout frameLayout = (FrameLayout) viewCreateView;
                TextView textView = (TextView) frameLayout.findViewById(R.id.text);
                FontAwesomeView check = (FontAwesomeView) frameLayout.findViewById(R.id.check);
                int itemId = ((PrefsSelect) item).getItemId();
                if (itemId == 1) {
                    textView.setText(R.string.public_mode);
                    Intrinsics.checkExpressionValueIsNotNull(check, "check");
                    check.setVisibility(this.this$0.privacyMode != 1 ? 8 : 0);
                } else if (itemId == 2) {
                    textView.setText(R.string.private_mode);
                    Intrinsics.checkExpressionValueIsNotNull(check, "check");
                    check.setVisibility(this.this$0.privacyMode != 2 ? 8 : 0);
                }
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.visitor.VisitorsSettingFragment$Adapter$getView$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        if (this.this$0.this$0.privacyMode == ((VisitorsSettingFragment.PrefsSelect) item).getItemId()) {
                            return;
                        }
                        this.this$0.sendPrivacyRequest(Integer.valueOf(((VisitorsSettingFragment.PrefsSelect) item).getItemId()), null);
                    }
                });
                return frameLayout;
            }
            if (Intrinsics.areEqual(item, this.TEXT)) {
                View viewCreateView2 = createView(R.layout.setting_desc_text, viewGroup, view);
                if (viewCreateView2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
                }
                FrameLayout frameLayout2 = (FrameLayout) viewCreateView2;
                TextView text = (TextView) frameLayout2.findViewById(R.id.text);
                Intrinsics.checkExpressionValueIsNotNull(text, "text");
                if (this.this$0.privacyMode == 1) {
                    visitorsSettingFragment = this.this$0;
                    i2 = R.string.public_mode_hint;
                } else {
                    visitorsSettingFragment = this.this$0;
                    i2 = R.string.private_mode_hint;
                }
                text.setText(visitorsSettingFragment.getString(i2));
                return frameLayout2;
            }
            View view2 = super.getView(i, view, viewGroup);
            Intrinsics.checkExpressionValueIsNotNull(view2, "super.getView(position, convertView, parent)");
            return view2;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (Intrinsics.areEqual(getItem(i), this.TEXT)) {
                return false;
            }
            return super.isEnabled(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void sendPrivacyRequest(final Integer num, final Integer num2) {
            this.this$0.getProgressDialog().show();
            this.this$0.getProgressDialog().setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.visitor.VisitorsSettingFragment$Adapter$sendPrivacyRequest$1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    if (this.this$0.this$0.privacyRequest != null) {
                        this.this$0.this$0.getApi().abort(this.this$0.this$0.privacyRequest);
                    }
                }
            });
            VisitorsSettingFragment visitorsSettingFragment = this.this$0;
            ApiRequest.Builder builderPost = ApiRequest.builder().path("account/visit-settings").global().post();
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            if (num != null) {
                objectNodeCreateObjectNode.put("privacyMode", num.intValue());
            }
            if (num2 != null) {
                objectNodeCreateObjectNode.put("notificationStatus", num2.intValue());
            }
            visitorsSettingFragment.privacyRequest = builderPost.body(objectNodeCreateObjectNode).build();
            final Class<VisitorsSettingResponse> cls = VisitorsSettingResponse.class;
            this.this$0.getApi().exec(this.this$0.privacyRequest, new ApiResponseListener<VisitorsSettingResponse>(cls) { // from class: com.narvii.visitor.VisitorsSettingFragment$Adapter$sendPrivacyRequest$3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, VisitorsSettingFragment.VisitorsSettingResponse visitorsSettingResponse) throws Exception {
                    String str;
                    VisitorSetting visitSettings;
                    super.onFinish(apiRequest, (ApiRequest) visitorsSettingResponse);
                    if (this.this$0.this$0.getProgressDialog().isShowing()) {
                        this.this$0.this$0.getProgressDialog().dismiss();
                    }
                    if (visitorsSettingResponse != null && (visitSettings = visitorsSettingResponse.getVisitSettings()) != null) {
                        this.this$0.this$0.privacyMode = visitSettings.privacyMode;
                        this.this$0.this$0.notificationStatus = visitSettings.notificationStatus;
                        this.this$0.this$0.getAccount().updateVisitorSetting(Integer.valueOf(this.this$0.this$0.privacyMode), Integer.valueOf(this.this$0.this$0.notificationStatus));
                        this.this$0.this$0.getAdapter().notifyDataSetChanged();
                    }
                    Integer num3 = num;
                    if (num3 != null) {
                        if (num3 != null && num3.intValue() == 1) {
                            str = "PublicMode";
                        } else {
                            str = (num3 != null && num3.intValue() == 2) ? "PrivateMode" : "";
                        }
                        LogEvent.clickWildcardBuilder(this.this$0.this$0).area(str).send();
                    }
                    if (num2 != null) {
                        LogEvent.Builder builderArea = LogEvent.clickWildcardBuilder(this.this$0.this$0).area("NewProfileVisitors");
                        Integer num4 = num2;
                        builderArea.actSemantic((num4 != null && num4.intValue() == 1) ? ActSemantic.turnOn : ActSemantic.turnOff).send();
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    if (this.this$0.this$0.getProgressDialog().isShowing()) {
                        this.this$0.this$0.getProgressDialog().dismiss();
                    }
                    if (i == 300 && !TextUtils.isEmpty(str)) {
                        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.getContext());
                        aCMAlertDialog.setMessage(str);
                        aCMAlertDialog.addButton(R.string.got_it, null);
                        aCMAlertDialog.show();
                    } else {
                        Context context = this.this$0.getContext();
                        if (str == null) {
                            str = "";
                        }
                        Utils.showShortToast(context, str);
                    }
                    this.this$0.this$0.getAdapter().notifyDataSetChanged();
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        setErrorMessage(null);
        sendVisitorSettingRequest();
    }

    private final void sendVisitorSettingRequest() {
        View progressView = this.progressView;
        Intrinsics.checkExpressionValueIsNotNull(progressView, "progressView");
        progressView.setVisibility(0);
        getApi().exec(ApiRequest.builder().path("account/visit-settings").global().build(), new ApiResponseListener<VisitorsSettingResponse>(VisitorsSettingResponse.class) { // from class: com.narvii.visitor.VisitorsSettingFragment.sendVisitorSettingRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, VisitorsSettingResponse visitorsSettingResponse) throws Exception {
                VisitorSetting visitSettings;
                super.onFinish(apiRequest, (ApiRequest) visitorsSettingResponse);
                if (visitorsSettingResponse != null && (visitSettings = visitorsSettingResponse.getVisitSettings()) != null) {
                    VisitorsSettingFragment.this.updateVisitorSetting(visitSettings);
                }
                VisitorsSettingFragment.this.loadSuccess = true;
                View progressView2 = ((NVListFragment) VisitorsSettingFragment.this).progressView;
                Intrinsics.checkExpressionValueIsNotNull(progressView2, "progressView");
                progressView2.setVisibility(8);
                VisitorsSettingFragment.this.setErrorMessage(null);
                VisitorsSettingFragment.this.getAdapter().notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                View progressView2 = ((NVListFragment) VisitorsSettingFragment.this).progressView;
                Intrinsics.checkExpressionValueIsNotNull(progressView2, "progressView");
                progressView2.setVisibility(8);
                VisitorsSettingFragment.this.setErrorMessage(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateVisitorSetting(VisitorSetting visitorSetting) {
        this.privacyMode = visitorSetting.privacyMode;
        this.notificationStatus = visitorSetting.notificationStatus;
        getAccount().updateVisitorSetting(Integer.valueOf(this.privacyMode), Integer.valueOf(this.notificationStatus));
        getAdapter().notifyDataSetChanged();
    }

    /* compiled from: VisitorsSettingFragment.kt */
    public static final class PrefsSelect {
        private final int groupId;
        private final int itemId;

        public static /* synthetic */ PrefsSelect copy$default(PrefsSelect prefsSelect, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = prefsSelect.groupId;
            }
            if ((i3 & 2) != 0) {
                i2 = prefsSelect.itemId;
            }
            return prefsSelect.copy(i, i2);
        }

        public final int component1() {
            return this.groupId;
        }

        public final int component2() {
            return this.itemId;
        }

        public final PrefsSelect copy(int i, int i2) {
            return new PrefsSelect(i, i2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof PrefsSelect) {
                    PrefsSelect prefsSelect = (PrefsSelect) obj;
                    if (this.groupId == prefsSelect.groupId) {
                        if (this.itemId == prefsSelect.itemId) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (this.groupId * 31) + this.itemId;
        }

        public String toString() {
            return "PrefsSelect(groupId=" + this.groupId + ", itemId=" + this.itemId + ")";
        }

        public PrefsSelect(int i, int i2) {
            this.groupId = i;
            this.itemId = i2;
        }

        public final int getGroupId() {
            return this.groupId;
        }

        public final int getItemId() {
            return this.itemId;
        }
    }

    /* compiled from: VisitorsSettingFragment.kt */
    public static final class VisitorsSettingResponse extends ApiResponse {
        private VisitorSetting visitSettings;

        public final VisitorSetting getVisitSettings() {
            return this.visitSettings;
        }

        public final void setVisitSettings(VisitorSetting visitorSetting) {
            this.visitSettings = visitorSetting;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ListView listView = getListView();
            if (listView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView).setOverscrollStretchHeader(color);
            ListView listView2 = getListView();
            if (listView2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView2).setOverscrollStretchFooter(color);
            ListView listView3 = getListView();
            if (listView3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView3).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ListView listView4 = getListView();
            if (listView4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView4).setOverscrollStretchHeader(color2);
            ListView listView5 = getListView();
            if (listView5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView5).setOverscrollStretchFooter(color2);
            ListView listView6 = getListView();
            if (listView6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView6).setListContentBackgroundColor(-1);
        }
    }
}
