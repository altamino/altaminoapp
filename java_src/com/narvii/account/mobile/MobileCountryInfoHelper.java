package com.narvii.account.mobile;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.CodeVerifyFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.logging.LogEvent;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.emojione.EmojioneShortName;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.ListDialog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class MobileCountryInfoHelper {
    private static Map<String, CountryInfoR> countryCodeByIso = new HashMap(300);
    private static CountryInfoR lastSelectedCountry = null;
    Context context;

    private static void getAllPhoneCountryCodes(Context context, String[] strArr, String[] strArr2) throws Resources.NotFoundException {
        String[] stringArray = context.getResources().getStringArray(R.array.com_phone_country_codes);
        HashSet hashSet = strArr2 != null ? new HashSet(Arrays.asList(strArr2)) : null;
        HashSet hashSet2 = (strArr == null || strArr.length <= 0) ? new HashSet() : new HashSet(Arrays.asList(strArr));
        for (String str : stringArray) {
            String[] strArrSplit = str.split(":", 3);
            if (!hashSet2.contains(strArrSplit[1]) && (hashSet == null || hashSet.contains(strArrSplit[1]))) {
                CountryInfoR countryInfoR = new CountryInfoR(Integer.parseInt(strArrSplit[0]), strArrSplit[1], strArrSplit[2]);
                countryCodeByIso.put(countryInfoR.isoCode.toUpperCase(Locale.US), countryInfoR);
            }
        }
    }

    public MobileCountryInfoHelper(Context context) {
        this.context = context;
    }

    public String[] splitPhoneNumber(String str) throws Resources.NotFoundException {
        String[] strArr = new String[2];
        if (countryCodeByIso.isEmpty()) {
            getAllPhoneCountryCodes(this.context, null, null);
        }
        if (str.startsWith("+")) {
            String strSubstring = str.substring(1);
            for (CountryInfoR countryInfoR : countryCodeByIso.values()) {
                if (strSubstring.startsWith(String.valueOf(countryInfoR.countryCode))) {
                    strArr[0] = "+" + countryInfoR.countryCode;
                    strArr[1] = str.substring(strArr[0].length()).trim();
                }
            }
        } else {
            strArr[1] = str;
        }
        return strArr;
    }

    public CountryInfoR getLocalCountryInfo(String str) throws Resources.NotFoundException {
        String currentCountry;
        if (countryCodeByIso.isEmpty()) {
            getAllPhoneCountryCodes(this.context, null, null);
        }
        CountryInfoR countryByPhone = StringUtils.isTrimEmpty(str) ? null : getCountryByPhone(str);
        if (countryByPhone == null && lastSelectedCountry != null) {
            countryByPhone = getLastSelectedCountry();
        }
        if (countryByPhone == null && (currentCountry = getCurrentCountry(this.context)) != null) {
            countryByPhone = countryCodeByIso.get(currentCountry.toUpperCase(Locale.US));
        }
        return countryByPhone == null ? new CountryInfoR(new Locale("", "US"), 1) : countryByPhone;
    }

    public static String getCurrentCountry(Context context) {
        String networkCountryIso;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(CodeVerifyFragment.KEY_PHONE);
            String simCountryIso = telephonyManager.getSimCountryIso();
            if (simCountryIso != null && simCountryIso.length() == 2) {
                return simCountryIso.toLowerCase(Locale.US);
            }
            if (telephonyManager.getPhoneType() == 2 || (networkCountryIso = telephonyManager.getNetworkCountryIso()) == null || networkCountryIso.length() != 2) {
                return null;
            }
            return networkCountryIso.toLowerCase(Locale.US);
        } catch (Exception unused) {
            return null;
        }
    }

    private CountryInfoR getCountryByPhone(String str) throws NumberFormatException {
        if (StringUtils.isTrimEmpty(str)) {
            return null;
        }
        Matcher matcher = Pattern.compile("\\d+").matcher(str);
        if (matcher.find()) {
            String strGroup = matcher.group();
            if (strGroup.length() <= 3 && strGroup.length() >= 1) {
                try {
                    int i = Integer.parseInt(strGroup);
                    for (CountryInfoR countryInfoR : countryCodeByIso.values()) {
                        if (countryInfoR.countryCode == i) {
                            return countryInfoR;
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public static List<CountryInfoR> getCountryList() throws Resources.NotFoundException {
        if (countryCodeByIso.isEmpty()) {
            getAllPhoneCountryCodes(NVApplication.instance(), null, null);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(countryCodeByIso.values());
        Collections.sort(arrayList);
        return arrayList;
    }

    public int getLocalCountryCode(String str) {
        return getLocalCountryInfo(str).countryCode;
    }

    public static CountryInfoR getLastSelectedCountry() throws Resources.NotFoundException {
        if (lastSelectedCountry == null) {
            return null;
        }
        List<CountryInfoR> countryList = getCountryList();
        return countryList.get(countryList.indexOf(lastSelectedCountry));
    }

    public static void setLastSelectedCountry(CountryInfoR countryInfoR) {
        if (countryInfoR != null) {
            lastSelectedCountry = null;
        }
        if (getCountryList().indexOf(countryInfoR) != -1) {
            lastSelectedCountry = countryInfoR;
        }
    }

    public static Dialog createSelectCountryDialog(Context context, Callback<CountryInfoR> callback, CountryInfoR countryInfoR, boolean z) throws Resources.NotFoundException {
        final int iIndexOf;
        NVContext nVContext = Utils.getNVContext(context);
        List<CountryInfoR> countryList = getCountryList();
        if (nVContext == null) {
            return null;
        }
        CountryListDialog countryListDialog = new CountryListDialog(nVContext, countryList, callback, z) { // from class: com.narvii.account.mobile.MobileCountryInfoHelper.1
            @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
            public String getPageName() {
                return "SignUpPickCountryCode";
            }
        };
        if (countryInfoR != null && (iIndexOf = countryList.indexOf(countryInfoR)) > 0) {
            countryListDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.narvii.account.mobile.-$$Lambda$MobileCountryInfoHelper$p-l9ZVpux4sb-uvNc-R5gUUt5v0
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    ((ListDialog) dialogInterface).getListView().setSelectionFromTop(iIndexOf, 0);
                }
            });
        }
        return countryListDialog;
    }

    static class CountryListDialog extends ListDialog {
        Callback<CountryInfoR> callback;
        List<CountryInfoR> countryInfoList;
        boolean showAreaCode;
        protected static final int[] STATE_PRESSED = {android.R.attr.state_pressed};
        protected static final int[] STATE_FOCUSED = {android.R.attr.state_focused};
        protected static final int[] STATE_NORMAL = new int[0];

        @Override // com.narvii.widget.ListDialog
        protected int layout() {
            return R.layout.dialog_list_2;
        }

        public CountryListDialog(NVContext nVContext, List<CountryInfoR> list, Callback<CountryInfoR> callback, boolean z) {
            super(nVContext, R.style.CustomListDialog);
            this.countryInfoList = list;
            this.callback = callback;
            this.showAreaCode = z;
            this.listView.setSelector(getListSelector());
            setListAdapter();
        }

        public Drawable getListSelector() {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(STATE_PRESSED, new ColorDrawable(-1644826));
            stateListDrawable.addState(STATE_FOCUSED, new ColorDrawable(-1644826));
            stateListDrawable.addState(STATE_NORMAL, new ColorDrawable(0));
            return stateListDrawable;
        }

        @Override // com.narvii.widget.ListDialog
        protected NVAdapter createAdapter() {
            CountryAdapter countryAdapter = new CountryAdapter(this.context, this.countryInfoList, this.showAreaCode);
            countryAdapter.setCallback(new CountryAdapter.Callback() { // from class: com.narvii.account.mobile.-$$Lambda$MobileCountryInfoHelper$CountryListDialog$py2HszSwqr4TJ2tGRpFj-IKUSgU
                @Override // com.narvii.account.mobile.MobileCountryInfoHelper.CountryAdapter.Callback
                public final void onClickCountry(CountryInfoR countryInfoR) {
                    this.f$0.lambda$createAdapter$0$MobileCountryInfoHelper$CountryListDialog(countryInfoR);
                }
            });
            getListView().setOnItemClickListener(countryAdapter);
            return countryAdapter;
        }

        public /* synthetic */ void lambda$createAdapter$0$MobileCountryInfoHelper$CountryListDialog(CountryInfoR countryInfoR) {
            Callback<CountryInfoR> callback = this.callback;
            if (callback != null) {
                callback.call(countryInfoR);
            }
            LogEvent.clickWildcardBuilder(this, "CountryList").send();
            dismiss();
        }
    }

    static class CountryAdapter extends NVAdapter {
        Callback callback;
        List<CountryInfoR> countryInfoList;
        LayoutInflater inflater;
        boolean showAreaCode;

        interface Callback {
            void onClickCountry(CountryInfoR countryInfoR);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public CountryAdapter(NVContext nVContext, List<CountryInfoR> list, boolean z) {
            super(nVContext);
            this.countryInfoList = list;
            this.showAreaCode = z;
        }

        public void setCallback(Callback callback) {
            this.callback = callback;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<CountryInfoR> list = this.countryInfoList;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public CountryInfoR getItem(int i) {
            return this.countryInfoList.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                if (this.inflater == null) {
                    this.inflater = LayoutInflater.from(viewGroup.getContext());
                }
                view = this.inflater.inflate(R.layout.item_country_code_picker, viewGroup, false);
            }
            CountryInfoR item = getItem(i);
            ((EmojioneView) view.findViewById(R.id.emoji)).setEmoji(EmojioneShortName.shortNameToUnicode.get("flag_" + item.isoCode.toLowerCase(Locale.US)));
            TextView textView = (TextView) view.findViewById(R.id.text);
            if (this.showAreaCode) {
                textView.setText(item.countryName + " (+" + item.countryCode + ")");
            } else {
                textView.setText(item.countryName);
            }
            return view;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof CountryInfoR) {
                Callback callback = this.callback;
                if (callback == null) {
                    return true;
                }
                callback.onClickCountry((CountryInfoR) obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
