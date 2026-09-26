package com.narvii.list.prefs;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class PrefsAdapter extends NVAdapter {
    public static final Tag DIVIDER = new Tag("divider");
    private ArrayList<Object> cells;
    private int colorPrimary;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected abstract void buildCells(List<Object> list);

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 8;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.cells = null;
        super.notifyDataSetChanged();
    }

    protected void setUpLearnMore(View view, String str) {
    }

    @Override // com.narvii.list.NVAdapter
    protected boolean supportNVTheme() {
        return true;
    }

    protected ArrayList<Object> cells() {
        if (this.cells == null) {
            ArrayList<Object> arrayList = new ArrayList<>();
            buildCells(arrayList);
            this.cells = arrayList;
            ListIterator<Object> listIterator = arrayList.listIterator();
            Object obj = null;
            while (listIterator.hasNext()) {
                Object next = listIterator.next();
                if ((next instanceof PrefsItem) && !(next instanceof PrefsSection) && !(next instanceof PrefsMargin) && (obj instanceof PrefsItem) && !(obj instanceof PrefsSection) && !(obj instanceof PrefsMargin)) {
                    listIterator.previous();
                    listIterator.add(DIVIDER);
                    listIterator.next();
                }
                obj = next;
            }
        }
        return this.cells;
    }

    protected CharSequence getPrefsText(PrefsItem prefsItem) {
        String str = prefsItem.name;
        if (str != null) {
            return str;
        }
        if (prefsItem.id == 0) {
            return null;
        }
        try {
            return getContext().getResources().getText(prefsItem.id);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        final PrefsSwitch prefsSwitch;
        Callback<PrefsSwitch> callback;
        if (obj instanceof PrefsEntry) {
            PrefsEntry prefsEntry = (PrefsEntry) obj;
            Callback<PrefsEntry> callback2 = prefsEntry.callback;
            if (callback2 != null) {
                callback2.call(prefsEntry);
            } else {
                Intent intent = prefsEntry.callbackIntent;
                if (intent != null) {
                    try {
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    } catch (Exception e) {
                        Log.e("fail to start intent " + prefsEntry.callbackIntent, e);
                    }
                }
            }
        } else if ((obj instanceof PrefsSwitch) && (callback = (prefsSwitch = (PrefsSwitch) obj).callback) != null) {
            if (prefsSwitch.switchMode == 0) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.on, 0);
                actionSheetDialog.addItem(R.string.off, 1);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.list.prefs.PrefsAdapter.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        PrefsSwitch prefsSwitch2 = prefsSwitch;
                        prefsSwitch2.on = i11 == 0;
                        prefsSwitch2.callback.call(prefsSwitch2);
                        PrefsAdapter.this.notifyDataSetChanged();
                    }
                });
                actionSheetDialog.show();
            } else {
                prefsSwitch.on = !prefsSwitch.on;
                callback.call(prefsSwitch);
                notifyDataSetChanged();
            }
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    public PrefsAdapter(NVContext nVContext) {
        super(nVContext);
        this.colorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
    }

    private int getPrefsTextColor() {
        if (isDarkNVTheme()) {
            return ContextCompat.getColor(this.context.getContext(), R.color.prefs_text_color_dark_70p);
        }
        return -2013265920;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return cells().size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return cells().get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return getItem(i10).hashCode();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        Object item = getItem(i10);
        if (item instanceof PrefsSection) {
            return 1;
        }
        if (item instanceof PrefsMargin) {
            return 2;
        }
        if (item instanceof PrefsWarning) {
            return 4;
        }
        if (item instanceof PrefsRedAlert) {
            return 5;
        }
        if (item instanceof PrefsToggle) {
            return 6;
        }
        if (item instanceof PrefsItem) {
            return 3;
        }
        if (item instanceof PrefsDescription) {
            return 7;
        }
        if (item == DIVIDER) {
            return 0;
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int prefsTextColor;
        int i16;
        int i17;
        int i18;
        int color;
        Object item = getItem(i10);
        int i19 = 4;
        int i20 = 0;
        if (item instanceof PrefsSection) {
            PrefsSection prefsSection = (PrefsSection) item;
            View viewCreateView = createView(R.layout.prefs_section_item, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            if (isDarkNVTheme()) {
                color = ContextCompat.getColor(getContext(), R.color.prefs_section_color_dark);
            } else {
                color = this.colorPrimary;
            }
            textView.setTextColor(color);
            textView.setAllCaps(prefsSection.isAllCaps);
            textView.setText(getPrefsText(prefsSection));
            View viewFindViewById = viewCreateView.findViewById(R.id.learn_more);
            if (viewFindViewById != null) {
                if (prefsSection.learnMoreUrl != null) {
                    i19 = 0;
                }
                viewFindViewById.setVisibility(i19);
                String str = prefsSection.learnMoreUrl;
                if (str != null) {
                    setUpLearnMore(viewCreateView, str);
                }
            }
            return viewCreateView;
        }
        if (item instanceof PrefsMargin) {
            View viewCreateView2 = createView(R.layout.prefs_margin_item, viewGroup, view);
            int dimensionPixelSize = ((PrefsMargin) item).marginSize;
            if (dimensionPixelSize == 0) {
                dimensionPixelSize = viewGroup.getResources().getDimensionPixelSize(R.dimen.prefs_default_margin);
            }
            viewCreateView2.setMinimumHeight(dimensionPixelSize);
            return viewCreateView2;
        }
        if (item instanceof PrefsRedAlert) {
            PrefsRedAlert prefsRedAlert = (PrefsRedAlert) item;
            View viewCreateView3 = createView(R.layout.prefs_normal_item, viewGroup, view);
            TextView textView2 = (TextView) viewCreateView3.findViewById(R.id.text);
            textView2.setText(getPrefsText((PrefsItem) item));
            textView2.setTextColor(-1503941);
            TextView textView3 = (TextView) viewCreateView3.findViewById(R.id.text2);
            textView3.setText(prefsRedAlert.text);
            textView3.setTextColor(-1503941);
            textView3.setTextSize(1, 20.0f);
            if (TextUtils.isEmpty(prefsRedAlert.text)) {
                i18 = 8;
            } else {
                i18 = 0;
            }
            textView3.setVisibility(i18);
            ImageView imageView = (ImageView) viewCreateView3.findViewById(R.id.right_icon);
            int i21 = prefsRedAlert.rightIconResId;
            if (i21 != 0) {
                imageView.setImageResource(i21);
            } else {
                imageView.setImageDrawable(null);
            }
            if (prefsRedAlert.rightIconResId == 0) {
                i20 = 8;
            }
            imageView.setVisibility(i20);
            ((TintButton) viewCreateView3.findViewById(R.id.chevron_right)).setTintColor(-1503941);
            return viewCreateView3;
        }
        if (item instanceof PrefsWarning) {
            PrefsWarning prefsWarning = (PrefsWarning) item;
            View viewCreateView4 = createView(R.layout.prefs_warning_item, viewGroup, view);
            ((TextView) viewCreateView4.findViewById(R.id.text)).setText(getPrefsText(prefsWarning));
            TextView textView4 = (TextView) viewCreateView4.findViewById(R.id.text2);
            textView4.setText(prefsWarning.subTitle);
            if (StringUtils.isTrimEmpty(prefsWarning.subTitle)) {
                i17 = 8;
            } else {
                i17 = 0;
            }
            textView4.setVisibility(i17);
            TextView textView5 = (TextView) viewCreateView4.findViewById(R.id.warning_info);
            textView5.setText(prefsWarning.warningInfo);
            if (StringUtils.isTrimEmpty(prefsWarning.warningInfo)) {
                i20 = 8;
            }
            textView5.setVisibility(i20);
            return viewCreateView4;
        }
        if (item instanceof PrefsDescription) {
            View viewCreateView5 = createView(R.layout.prefs_description, viewGroup, view);
            ((TextView) viewCreateView5.findViewById(R.id.text)).setText(((PrefsDescription) item).text);
            return viewCreateView5;
        }
        float f = 0.5f;
        if (item instanceof PrefsToggle) {
            final PrefsToggle prefsToggle = (PrefsToggle) item;
            View viewCreateView6 = createView(R.layout.prefs_toggle, viewGroup, view);
            TextView textView6 = (TextView) viewCreateView6.findViewById(R.id.name);
            textView6.setText(prefsToggle.name);
            textView6.setSingleLine(prefsToggle.textSingleLine);
            TextView textView7 = (TextView) viewCreateView6.findViewById(R.id.desc);
            if (TextUtils.isEmpty(prefsToggle.desc)) {
                i20 = 8;
            }
            textView7.setVisibility(i20);
            textView7.setText(prefsToggle.desc);
            if (isDarkNVTheme()) {
                int color2 = prefsToggle.descColor;
                if (color2 == 0) {
                    color2 = ContextCompat.getColor(getContext(), R.color.prefs_text_color_dark);
                }
                textView7.setTextColor(color2);
            } else {
                int color3 = prefsToggle.descColor;
                if (color3 == 0) {
                    color3 = ContextCompat.getColor(getContext(), R.color.pref_desc_default_color);
                }
                textView7.setTextColor(color3);
            }
            CheckBox checkBox = (CheckBox) viewCreateView6.findViewById(R.id.check_box);
            checkBox.setOnCheckedChangeListener(null);
            checkBox.setChecked(prefsToggle.on);
            if (isDarkNVTheme()) {
                i16 = R.drawable.switch_bg_dt;
            } else {
                i16 = R.drawable.switch_bg;
            }
            checkBox.setButtonDrawable(i16);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.list.prefs.PrefsAdapter.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                    PrefsToggle prefsToggle2 = prefsToggle;
                    prefsToggle2.on = z6;
                    Callback<PrefsToggle> callback = prefsToggle2.callback;
                    if (callback != null) {
                        callback.call(prefsToggle2);
                    }
                }
            });
            if (prefsToggle.enabled) {
                f = 1.0f;
            }
            viewCreateView6.setAlpha(f);
            return viewCreateView6;
        }
        if (item instanceof PrefsItem) {
            PrefsItem prefsItem = (PrefsItem) item;
            View viewCreateView7 = createView(R.layout.prefs_normal_item, viewGroup, view);
            ((TextView) viewCreateView7.findViewById(R.id.text)).setText(getPrefsText(prefsItem));
            ImageView imageView2 = (ImageView) viewCreateView7.findViewById(R.id.icon);
            if (prefsItem.icon == null) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            imageView2.setVisibility(i11);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(prefsItem.iconBackgroundColor);
            imageView2.setBackgroundDrawable(shapeDrawable);
            imageView2.setImageDrawable(prefsItem.icon);
            ImageView imageView3 = (ImageView) viewCreateView7.findViewById(R.id.right_icon);
            int i22 = prefsItem.rightIconResId;
            if (i22 != 0) {
                imageView3.setImageResource(i22);
            } else {
                imageView3.setImageDrawable(null);
            }
            if (prefsItem.rightIconResId != 0) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            imageView3.setVisibility(i12);
            View viewFindViewById2 = viewCreateView7.findViewById(R.id.chevron_right);
            if (prefsItem.chevronRight) {
                if (prefsItem.enabled) {
                    i13 = 0;
                } else {
                    i13 = 4;
                }
            } else {
                i13 = 8;
            }
            viewFindViewById2.setVisibility(i13);
            TextView textView8 = (TextView) viewCreateView7.findViewById(R.id.text2);
            TextView textView9 = (TextView) viewCreateView7.findViewById(R.id.desc);
            if (TextUtils.isEmpty(prefsItem.desc)) {
                i14 = 8;
            } else {
                i14 = 0;
            }
            textView9.setVisibility(i14);
            textView9.setText(prefsItem.desc);
            if (isDarkNVTheme()) {
                int color4 = prefsItem.descColor;
                if (color4 == 0) {
                    color4 = ContextCompat.getColor(getContext(), R.color.prefs_text_color_dark);
                }
                textView9.setTextColor(color4);
            } else {
                int color5 = prefsItem.descColor;
                if (color5 == 0) {
                    color5 = ContextCompat.getColor(getContext(), R.color.pref_desc_default_color);
                }
                textView9.setTextColor(color5);
            }
            textView9.setEllipsize(prefsItem.descTruncateAt);
            textView8.setTypeface(Typeface.defaultFromStyle(0));
            textView8.setBackgroundColor(getContext().getResources().getColor(android.R.color.transparent));
            if (prefsItem instanceof PrefsSwitch) {
                PrefsSwitch prefsSwitch = (PrefsSwitch) prefsItem;
                Context context = getContext();
                if (prefsSwitch.on) {
                    i15 = R.string.on;
                } else {
                    i15 = R.string.off;
                }
                textView8.setText(context.getString(i15));
                if (prefsSwitch.on) {
                    prefsTextColor = getContext().getResources().getColor(R.color.pref_switch_green);
                } else {
                    prefsTextColor = getPrefsTextColor();
                }
                textView8.setTextColor(prefsTextColor);
                textView8.setTypeface(Typeface.defaultFromStyle(prefsSwitch.on ? 1 : 0));
                textView8.setVisibility(0);
            } else if (prefsItem instanceof PrefsText) {
                PrefsText prefsText = (PrefsText) prefsItem;
                if (prefsText.text2Bold) {
                    textView8.setTypeface(Typeface.defaultFromStyle(1));
                }
                textView8.setText(prefsText.text);
                int prefsTextColor2 = prefsText.textColor;
                if (prefsTextColor2 == 0) {
                    prefsTextColor2 = getPrefsTextColor();
                }
                textView8.setTextColor(prefsTextColor2);
                int i23 = prefsText.drawableId;
                if (i23 != 0) {
                    textView8.setBackgroundResource(i23);
                }
                textView8.setVisibility(0);
            } else if (prefsItem instanceof PrefsBadge) {
                PrefsBadge prefsBadge = (PrefsBadge) prefsItem;
                if (prefsBadge.count > 0) {
                    int i24 = prefsBadge.badgeBgResId;
                    if (i24 == 0) {
                        i24 = R.drawable.prefs_badge;
                    }
                    textView8.setBackgroundResource(i24);
                    textView8.setText(Utils.getBadgeCount(prefsBadge.count));
                    textView8.setTextColor(getContext().getResources().getColor(android.R.color.white));
                    textView8.setVisibility(0);
                } else {
                    textView8.setVisibility(8);
                }
            } else {
                textView8.setVisibility(8);
            }
            if (!prefsItem.enabled) {
                textView8.setVisibility(4);
            }
            if (prefsItem.enabled) {
                f = 1.0f;
            }
            viewCreateView7.setAlpha(f);
            return viewCreateView7;
        }
        if (item != DIVIDER) {
            return null;
        }
        return createView(R.layout.prefs_divider, viewGroup, view);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        Object item = getItem(i10);
        if ((item instanceof PrefsSection) || (item instanceof PrefsMargin)) {
            return false;
        }
        if (item instanceof PrefsItem) {
            return ((PrefsItem) item).enabled;
        }
        if (item instanceof PrefsDescription) {
            return false;
        }
        return super.isEnabled(i10);
    }
}
