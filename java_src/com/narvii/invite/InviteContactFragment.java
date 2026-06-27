package com.narvii.invite;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.adapter.MarginAdapter;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Community;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import com.narvii.permisson.PermissionRationaleDialog;
import com.narvii.share.ShareUtils;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class InviteContactFragment extends NVListFragment implements SearchBar.OnSearchListener, View.OnClickListener, FragmentOnBackListener {
    public static final int REQUEST_EMAIL = 2;
    public static final int REQUEST_PHONE = 1;
    private AllContactAdapter allContactAdapter;
    List<Contact> allContactList;
    private TextView finalStep;
    NVFlowLayout inviteeLayout;
    String keyword;
    private SearchBar mSearchBar;
    public MergeAdapter mergeAdapter;
    List<Contact> searchContactList;
    public SearchContactTask searchContactTask;
    View selectedView;
    TextView send;
    public List<Contact> selectedContactList = new ArrayList();
    boolean gotActivityResult = false;
    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.invite.InviteContactFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InviteContactFragment.this.selectedView = view;
            view.setSelected(true);
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(InviteContactFragment.this.getContext());
            actionSheetDialog.addItem(R.string.remove, true);
            Contact contact = (Contact) view.getTag();
            if (contact != null) {
                actionSheetDialog.setTitle(contact.getContactText());
            }
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.invite.InviteContactFragment.1.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i != 0) {
                        return;
                    }
                    InviteContactFragment.this.removeSelectedView();
                }
            });
            actionSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.invite.InviteContactFragment.1.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    View view2 = InviteContactFragment.this.selectedView;
                    if (view2 != null) {
                        view2.setSelected(false);
                    }
                }
            });
            actionSheetDialog.show();
        }
    };

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        getActivity().getWindow().setSoftInputMode(35);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelectedView() {
        View view = this.selectedView;
        if (view == null) {
            return;
        }
        this.selectedContactList.remove(view.getTag());
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        updateInviteeView();
        updateSendView();
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.allContactAdapter = new AllContactAdapter(this);
        SearchContactAdapter searchContactAdapter = new SearchContactAdapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.invite.InviteContactFragment.2
        };
        SearchEmptyAdapter searchEmptyAdapter = new SearchEmptyAdapter(this);
        this.mergeAdapter = new MergeAdapter(this);
        this.mergeAdapter.addAdapter(this.allContactAdapter);
        this.mergeAdapter.addAdapter(searchContactAdapter);
        this.mergeAdapter.addAdapter(searchEmptyAdapter);
        this.mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 70.0f)));
        dividerAdapter.setAdapter(this.mergeAdapter);
        return dividerAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.invite_contacts);
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.OnGestureListener() { // from class: com.narvii.invite.InviteContactFragment.3
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (InviteContactFragment.this.mSearchBar == null || !InviteContactFragment.this.mSearchBar.getEditText().isFocused()) {
                    return false;
                }
                SoftKeyboard.hideSoftKeyboard(InviteContactFragment.this.mSearchBar.getEditText());
                return false;
            }
        });
        listView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.invite.InviteContactFragment.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                gestureDetector.onTouchEvent(motionEvent);
                return false;
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.mSearchBar = (SearchBar) view.findViewById(R.id.search);
        this.mSearchBar.setVisibility(0);
        this.mSearchBar.setOnSearchListener(this);
        this.mSearchBar.setHintText(getString(R.string.invite_contact_search_hint));
        this.finalStep = (TextView) view.findViewById(R.id.final_step);
        this.finalStep.setText(getString(R.string.create_final_step_desc, 5) + "✌");
        ViewUtils.show(this.finalStep, getBooleanParam("afterCreateCommunity"));
        if (getBooleanParam("afterCreateCommunity")) {
            ((NVActivity) getActivity()).setActionBarLeftTextView(R.string.skip);
        }
        this.inviteeLayout = (NVFlowLayout) view.findViewById(R.id.invitee_layout);
        updateInviteeView();
        this.send = (TextView) view.findViewById(R.id.send);
        this.send.setOnClickListener(this);
        updateSendView();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_invite_contact, viewGroup, false);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        searchContact(str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        searchContact(str);
        searchBar.clearFocus();
        SoftKeyboard.hideSoftKeyboard(searchBar.getEditText());
    }

    private void searchContact(final String str) {
        SearchContactTask searchContactTask = this.searchContactTask;
        if (searchContactTask != null) {
            searchContactTask.cancel(true);
        }
        if (TextUtils.isEmpty(str)) {
            this.keyword = null;
            MergeAdapter mergeAdapter = this.mergeAdapter;
            if (mergeAdapter != null) {
                mergeAdapter.notifyDataSetChanged();
            }
        }
        this.searchContactTask = new SearchContactTask(this.allContactList, str);
        this.searchContactTask.callback = new Callback<List<Contact>>() { // from class: com.narvii.invite.InviteContactFragment.5
            @Override // com.narvii.util.Callback
            public void call(List<Contact> list) {
                InviteContactFragment inviteContactFragment = InviteContactFragment.this;
                MergeAdapter mergeAdapter2 = inviteContactFragment.mergeAdapter;
                if (mergeAdapter2 != null) {
                    inviteContactFragment.keyword = str;
                    inviteContactFragment.searchContactList = list;
                    mergeAdapter2.notifyDataSetChanged();
                }
            }
        };
        this.searchContactTask.execute(new Void[0]);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.send) {
            sendInviteOut();
        }
    }

    private boolean sendInviteOut() {
        int i;
        String defaultSmsPackage;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String stringParam = getStringParam("subject");
        String stringParam2 = getStringParam(MimeTypes.BASE_TYPE_TEXT);
        for (Contact contact : this.selectedContactList) {
            if (!TextUtils.isEmpty(contact.email)) {
                arrayList2.add(contact.email);
            } else if (!TextUtils.isEmpty(contact.phone)) {
                arrayList.add(contact.phone);
            }
        }
        if (arrayList2.isEmpty()) {
            i = 0;
        } else {
            Intent intentEmailIntent = new ShareUtils(this).emailIntent(null, stringParam, stringParam2, null);
            if (intentEmailIntent == null) {
                NVToast.makeText(getContext(), R.string.application_not_found, 0).show();
            } else {
                try {
                    intentEmailIntent.putExtra("android.intent.extra.EMAIL", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
                    startActivityForResult(intentEmailIntent, 2);
                    i = 1;
                } catch (ActivityNotFoundException e) {
                    Log.e(e.getMessage());
                }
            }
            i = 0;
        }
        if (!arrayList.isEmpty()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (Build.VERSION.SDK_INT >= 19 && (defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(getContext())) != null) {
                intent.setPackage(defaultSmsPackage);
            }
            intent.setData(Uri.parse("sms:" + TextUtils.join("; ", arrayList)));
            intent.putExtra("sms_body", stringParam2);
            try {
                startActivityForResult(intent, 1);
                i++;
            } catch (ActivityNotFoundException e2) {
                Log.e(e2.getMessage());
            }
        }
        if (i == 0) {
            NVToast.makeText(getContext(), R.string.application_not_found, 0).show();
        }
        return i != 0;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (getBooleanParam("afterCreateCommunity")) {
            goDashboard();
            return true;
        }
        if (nVActivity == null) {
            return true;
        }
        nVActivity.finish();
        return true;
    }

    public static class Contact implements Comparable<Contact> {
        public String email;
        public String name;
        public String phone;

        public String getDisplayName() {
            if (!TextUtils.isEmpty(this.name)) {
                return this.name;
            }
            if (!TextUtils.isEmpty(this.phone)) {
                return this.phone;
            }
            return this.email;
        }

        public String getContactText() {
            if (!TextUtils.isEmpty(this.phone)) {
                return this.phone;
            }
            return this.email;
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.name, PhoneNumberUtils.stripSeparators(this.phone), this.email});
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Contact)) {
                return false;
            }
            Contact contact = (Contact) obj;
            return Utils.isStringEquals(this.name, contact.name) && Utils.isStringEquals(PhoneNumberUtils.stripSeparators(this.phone), PhoneNumberUtils.stripSeparators(contact.phone)) && Utils.isStringEquals(this.email, contact.email);
        }

        private String getCompareKey() {
            String displayName = getDisplayName();
            return displayName == null ? "" : displayName.toLowerCase(Locale.US);
        }

        @Override // java.lang.Comparable
        public int compareTo(Contact contact) {
            return getCompareKey().compareTo(contact == null ? "" : contact.getCompareKey());
        }
    }

    private void updateSendView() {
        TextView textView = this.send;
        if (textView != null) {
            ViewUtils.show(textView, !CollectionUtils.isEmpty(this.selectedContactList));
            this.send.setText(this.selectedContactList.size() == 1 ? getString(R.string.send_one_invite) : getString(R.string.send_invites, Integer.valueOf(this.selectedContactList.size())));
        }
    }

    private void updateInviteeView() {
        ArrayList arrayList = new ArrayList();
        Iterator<Contact> it = this.selectedContactList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getDisplayName());
        }
        NVFlowLayout nVFlowLayout = this.inviteeLayout;
        if (nVFlowLayout != null) {
            nVFlowLayout.removeAllViews();
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.textview_invitee, (ViewGroup) this.inviteeLayout, false);
            this.inviteeLayout.addView(textView);
            textView.setText(getString(R.string.invitees) + ":");
            int i = 0;
            while (i < this.selectedContactList.size()) {
                Contact contact = this.selectedContactList.get(i);
                TextView textView2 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.textview_invitee_item, (ViewGroup) this.inviteeLayout, false);
                StringBuilder sb = new StringBuilder();
                sb.append(contact.getDisplayName());
                sb.append(i != this.selectedContactList.size() + (-1) ? "," : "");
                textView2.setText(sb.toString());
                textView2.setTag(contact);
                textView2.setOnClickListener(this.onClickListener);
                this.inviteeLayout.addView(textView2);
                i++;
            }
        }
    }

    class AllContactAdapter extends ContactAdapter implements PermissionListener {
        NVPermission.Builder builder;
        boolean denied;
        public LoadContactsTask loadContactsTask;
        boolean loadFinished;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public AllContactAdapter(NVContext nVContext) {
            super(nVContext);
            this.loadFinished = false;
            this.builder = NVPermission.builder(InviteContactFragment.this).permission("android.permission.READ_CONTACTS").requestCode(110).permissionListener(this);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            InviteContactFragment.this.registerPermissionResult(110, this);
            this.builder.request();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (TextUtils.isEmpty(InviteContactFragment.this.keyword)) {
                return (this.loadFinished || this.denied) && CollectionUtils.isEmpty(InviteContactFragment.this.allContactList);
            }
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.loadFinished = false;
            this.denied = false;
            this.builder.request();
            notifyDataSetChanged();
        }

        private void loadContacts() {
            this.loadContactsTask = InviteContactFragment.this.new LoadContactsTask();
            this.loadContactsTask.setCallback(new Callback<List<Contact>>() { // from class: com.narvii.invite.InviteContactFragment.AllContactAdapter.1
                @Override // com.narvii.util.Callback
                public void call(List<Contact> list) {
                    AllContactAdapter allContactAdapter = AllContactAdapter.this;
                    allContactAdapter.loadFinished = true;
                    InviteContactFragment.this.allContactList = list;
                    allContactAdapter.notifyDataSetChanged();
                }
            });
            this.loadContactsTask.execute(new Void[0]);
        }

        @Override // com.narvii.list.NVAdapter
        public void onDetach() {
            super.onDetach();
            LoadContactsTask loadContactsTask = this.loadContactsTask;
            if (loadContactsTask != null) {
                loadContactsTask.cancel(true);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(InviteContactFragment.this.keyword) && !CollectionUtils.isEmpty(InviteContactFragment.this.allContactList)) {
                return CollectionUtils.getSize(InviteContactFragment.this.allContactList);
            }
            return 0;
        }

        @Override // com.narvii.invite.InviteContactFragment.ContactAdapter, android.widget.Adapter
        public Contact getItem(int i) {
            return InviteContactFragment.this.allContactList.get(i);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return InviteContactFragment.this.allContactList != null || this.denied;
        }

        @Override // com.narvii.permisson.PermissionListener
        public void onPermissionGranted(int i) {
            loadContacts();
        }

        @Override // com.narvii.permisson.PermissionListener
        public void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList) {
            this.denied = true;
            notifyDataSetChanged();
            if (z) {
                PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).show();
            }
        }
    }

    class SearchContactAdapter extends ContactAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SearchContactAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.invite.InviteContactFragment.ContactAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            ViewUtils.highlightKeywords((TextView) view2.findViewById(R.id.text), InviteContactFragment.this.keyword, -16724355);
            ViewUtils.highlightKeywords((TextView) view2.findViewById(R.id.desc), InviteContactFragment.this.keyword, -16724355);
            return view2;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(InviteContactFragment.this.keyword) || CollectionUtils.isEmpty(InviteContactFragment.this.searchContactList)) {
                return 0;
            }
            return CollectionUtils.getSize(InviteContactFragment.this.searchContactList);
        }

        @Override // com.narvii.invite.InviteContactFragment.ContactAdapter, android.widget.Adapter
        public Contact getItem(int i) {
            return InviteContactFragment.this.searchContactList.get(i);
        }
    }

    class SearchEmptyAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SearchEmptyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (TextUtils.isEmpty(InviteContactFragment.this.keyword) || !CollectionUtils.isEmpty(InviteContactFragment.this.searchContactList)) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_invite_contact, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(InviteContactFragment.this.keyword);
            viewCreateView.findViewById(R.id.desc).setVisibility(8);
            ((ImageView) viewCreateView.findViewById(R.id.select)).setImageResource(R.drawable.invite_contact_plus);
            return viewCreateView;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r6, int r7, java.lang.Object r8, android.view.View r9, android.view.View r10) {
            /*
                r5 = this;
                com.narvii.invite.InviteContactFragment$Contact r0 = new com.narvii.invite.InviteContactFragment$Contact
                r0.<init>()
                com.narvii.invite.InviteContactFragment r1 = com.narvii.invite.InviteContactFragment.this
                java.lang.String r1 = r1.keyword
                boolean r1 = com.narvii.util.Utils.isValidPhone(r1)
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L19
                com.narvii.invite.InviteContactFragment r1 = com.narvii.invite.InviteContactFragment.this
                java.lang.String r1 = r1.keyword
                r0.phone = r1
            L17:
                r1 = 1
                goto L2b
            L19:
                com.narvii.invite.InviteContactFragment r1 = com.narvii.invite.InviteContactFragment.this
                java.lang.String r1 = r1.keyword
                boolean r1 = com.narvii.util.Utils.isValidEmail(r1)
                if (r1 == 0) goto L2a
                com.narvii.invite.InviteContactFragment r1 = com.narvii.invite.InviteContactFragment.this
                java.lang.String r1 = r1.keyword
                r0.email = r1
                goto L17
            L2a:
                r1 = 0
            L2b:
                r4 = 0
                if (r1 == 0) goto L5d
                com.narvii.invite.InviteContactFragment r1 = com.narvii.invite.InviteContactFragment.this
                java.util.List<com.narvii.invite.InviteContactFragment$Contact> r1 = r1.allContactList
                if (r1 == 0) goto L58
                r1.add(r2, r0)
                com.narvii.invite.InviteContactFragment r1 = com.narvii.invite.InviteContactFragment.this
                java.util.List<com.narvii.invite.InviteContactFragment$Contact> r1 = r1.selectedContactList
                r1.add(r0)
                com.narvii.invite.InviteContactFragment r0 = com.narvii.invite.InviteContactFragment.this
                com.narvii.widget.SearchBar r0 = com.narvii.invite.InviteContactFragment.access$100(r0)
                if (r0 == 0) goto L53
                com.narvii.invite.InviteContactFragment r0 = com.narvii.invite.InviteContactFragment.this
                com.narvii.widget.SearchBar r0 = com.narvii.invite.InviteContactFragment.access$100(r0)
                android.widget.EditText r0 = r0.getEditText()
                r0.setText(r4)
            L53:
                com.narvii.invite.InviteContactFragment r0 = com.narvii.invite.InviteContactFragment.this
                com.narvii.invite.InviteContactFragment.access$200(r0)
            L58:
                boolean r6 = super.onItemClick(r6, r7, r8, r9, r10)
                return r6
            L5d:
                com.narvii.widget.ACMAlertDialog r6 = new com.narvii.widget.ACMAlertDialog
                android.content.Context r7 = r5.getContext()
                r6.<init>(r7)
                int r7 = com.narvii.lib.R.string.invalid_email_or_phone
                r6.setMessage(r7)
                r7 = 17039370(0x104000a, float:2.42446E-38)
                r6.addButton(r7, r4)
                r6.show()
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.invite.InviteContactFragment.SearchEmptyAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }
    }

    abstract class ContactAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Contact getItem(int i) {
            return null;
        }

        public ContactAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Contact item = getItem(i);
            View viewCreateView = createView(R.layout.item_invite_contact, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(item.getDisplayName());
            TextView textView = (TextView) viewCreateView.findViewById(R.id.desc);
            textView.setText(item.getContactText());
            textView.setVisibility((TextUtils.isEmpty(item.name) || TextUtils.isEmpty(textView.getText())) ? 8 : 0);
            ((ImageView) viewCreateView.findViewById(R.id.select)).setImageResource(isSelected(i) ? R.drawable.invite_contact_selected : R.drawable.invite_contact_unselected);
            return viewCreateView;
        }

        private boolean isSelected(int i) {
            return InviteContactFragment.this.selectedContactList.contains(getItem(i));
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Contact item = getItem(i);
            if (InviteContactFragment.this.selectedContactList.contains(item)) {
                InviteContactFragment.this.selectedContactList.remove(item);
            } else {
                InviteContactFragment.this.selectedContactList.add(item);
            }
            InviteContactFragment.this.update();
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 || i == 2) {
            if (getBooleanParam("afterCreateCommunity") && !this.gotActivityResult) {
                this.gotActivityResult = true;
                goDashboard();
                return;
            }
            SearchBar searchBar = this.mSearchBar;
            if (searchBar != null) {
                searchBar.getEditText().setText((CharSequence) null);
            }
            this.selectedContactList.clear();
            update();
        }
    }

    private void goDashboard() {
        getActivity().finish();
        ((NotificationCenter) getService("notification")).sendNotification(new Notification("new", (Community) JacksonUtils.readAs(getStringParam("community"), Community.class)));
    }

    public class SearchContactTask extends AsyncTask<Void, Void, List<Contact>> {
        List<Contact> allContactList;
        Callback<List<Contact>> callback;
        String keyword;

        public SearchContactTask(List<Contact> list, String str) {
            this.allContactList = list;
            this.keyword = str;
        }

        public void setCallback(Callback<List<Contact>> callback) {
            this.callback = callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<Contact> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            List<Contact> list = this.allContactList;
            if (list != null) {
                Iterator<Contact> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Contact next = it.next();
                    if (isCancelled()) {
                        Log.d("search contact task is cancelled");
                        break;
                    }
                    if (isContatin(next, this.keyword)) {
                        arrayList.add(next);
                    }
                }
            }
            return arrayList;
        }

        private boolean isContatin(Contact contact, String str) {
            String lowerCase = str.toLowerCase(Locale.US);
            String str2 = contact.name;
            if (str2 != null && str2.toLowerCase(Locale.US).contains(lowerCase)) {
                return true;
            }
            String str3 = contact.email;
            if (str3 != null && str3.toLowerCase(Locale.US).contains(lowerCase)) {
                return true;
            }
            String str4 = contact.phone;
            return str4 != null && str4.toLowerCase(Locale.US).contains(lowerCase);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<Contact> list) {
            Callback<List<Contact>> callback = this.callback;
            if (callback != null) {
                callback.call(list);
            }
        }
    }

    class LoadContactsTask extends AsyncTask<Void, Void, List<Contact>> {
        Callback<List<Contact>> callback;

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }

        LoadContactsTask() {
        }

        public void setCallback(Callback<List<Contact>> callback) {
            this.callback = callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<Contact> doInBackground(Void... voidArr) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                Cursor cursorQuery = InviteContactFragment.this.getContext().getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "mimetype=? OR mimetype=?", new String[]{"vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/phone_v2"}, null);
                if (cursorQuery != null && cursorQuery.moveToFirst() && !isCancelled()) {
                    do {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("display_name"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("data1"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("mimetype"));
                        Contact contact = new Contact();
                        char c = 65535;
                        int iHashCode = string3.hashCode();
                        if (iHashCode != -1569536764) {
                            if (iHashCode == 684173810 && string3.equals("vnd.android.cursor.item/phone_v2")) {
                                c = 1;
                            }
                        } else if (string3.equals("vnd.android.cursor.item/email_v2")) {
                            c = 0;
                        }
                        if (c == 0) {
                            contact.email = string2;
                        } else if (c == 1) {
                            contact.phone = string2;
                        }
                        contact.name = string;
                        linkedHashSet.add(contact);
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                    } while (!isCancelled());
                }
            } catch (Exception e) {
                Log.e(e.getMessage());
            }
            ArrayList arrayList = new ArrayList(linkedHashSet);
            Collections.sort(arrayList);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<Contact> list) {
            super.onPostExecute((LoadContactsTask) list);
            Callback<List<Contact>> callback = this.callback;
            if (callback != null) {
                callback.call(list);
            }
        }
    }
}
