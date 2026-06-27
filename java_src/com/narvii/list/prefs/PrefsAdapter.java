package com.narvii.list.prefs;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
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
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes3.dex */
public abstract class PrefsAdapter extends NVAdapter {
    public static final Tag DIVIDER = new Tag("divider");
    private ArrayList<Object> cells;
    private int colorPrimary;

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

    protected void setUpLearnMore(View view, String str) {
    }

    @Override // com.narvii.list.NVAdapter
    protected boolean supportNVTheme() {
        return true;
    }

    public PrefsAdapter(NVContext nVContext) {
        super(nVContext);
        this.colorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.cells = null;
        super.notifyDataSetChanged();
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

    @Override // android.widget.Adapter
    public int getCount() {
        return cells().size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return cells().get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItem(i).hashCode();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        Object item = getItem(i);
        if ((item instanceof PrefsSection) || (item instanceof PrefsMargin)) {
            return false;
        }
        if (item instanceof PrefsItem) {
            return ((PrefsItem) item).enabled;
        }
        if (item instanceof PrefsDescription) {
            return false;
        }
        return super.isEnabled(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        Object item = getItem(i);
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
        return item == DIVIDER ? 0 : -1;
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

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        Object item = getItem(i);
        if (item instanceof PrefsSection) {
            PrefsSection prefsSection = (PrefsSection) item;
            View viewCreateView = createView(R.layout.prefs_section_item, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            textView.setTextColor(isDarkNVTheme() ? ContextCompat.getColor(getContext(), R.color.prefs_section_color_dark) : this.colorPrimary);
            textView.setAllCaps(prefsSection.isAllCaps);
            textView.setText(getPrefsText(prefsSection));
            View viewFindViewById = viewCreateView.findViewById(R.id.learn_more);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(prefsSection.learnMoreUrl != null ? 0 : 4);
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
            textView3.setVisibility(TextUtils.isEmpty(prefsRedAlert.text) ? 8 : 0);
            ImageView imageView = (ImageView) viewCreateView3.findViewById(R.id.right_icon);
            int i2 = prefsRedAlert.rightIconResId;
            if (i2 != 0) {
                imageView.setImageResource(i2);
            } else {
                imageView.setImageDrawable(null);
            }
            imageView.setVisibility(prefsRedAlert.rightIconResId == 0 ? 8 : 0);
            ((TintButton) viewCreateView3.findViewById(R.id.chevron_right)).setTintColor(-1503941);
            return viewCreateView3;
        }
        if (item instanceof PrefsWarning) {
            PrefsWarning prefsWarning = (PrefsWarning) item;
            View viewCreateView4 = createView(R.layout.prefs_warning_item, viewGroup, view);
            ((TextView) viewCreateView4.findViewById(R.id.text)).setText(getPrefsText(prefsWarning));
            TextView textView4 = (TextView) viewCreateView4.findViewById(R.id.text2);
            textView4.setText(prefsWarning.subTitle);
            textView4.setVisibility(StringUtils.isTrimEmpty(prefsWarning.subTitle) ? 8 : 0);
            TextView textView5 = (TextView) viewCreateView4.findViewById(R.id.warning_info);
            textView5.setText(prefsWarning.warningInfo);
            textView5.setVisibility(StringUtils.isTrimEmpty(prefsWarning.warningInfo) ? 8 : 0);
            return viewCreateView4;
        }
        if (item instanceof PrefsDescription) {
            View viewCreateView5 = createView(R.layout.prefs_description, viewGroup, view);
            ((TextView) viewCreateView5.findViewById(R.id.text)).setText(((PrefsDescription) item).text);
            return viewCreateView5;
        }
        if (item instanceof PrefsToggle) {
            final PrefsToggle prefsToggle = (PrefsToggle) item;
            View viewCreateView6 = createView(R.layout.prefs_toggle, viewGroup, view);
            TextView textView6 = (TextView) viewCreateView6.findViewById(R.id.name);
            textView6.setText(prefsToggle.name);
            textView6.setSingleLine(prefsToggle.textSingleLine);
            TextView textView7 = (TextView) viewCreateView6.findViewById(R.id.desc);
            textView7.setVisibility(TextUtils.isEmpty(prefsToggle.desc) ? 8 : 0);
            textView7.setText(prefsToggle.desc);
            if (isDarkNVTheme()) {
                int color = prefsToggle.descColor;
                if (color == 0) {
                    color = ContextCompat.getColor(getContext(), R.color.prefs_text_color_dark);
                }
                textView7.setTextColor(color);
            } else {
                int color2 = prefsToggle.descColor;
                if (color2 == 0) {
                    color2 = ContextCompat.getColor(getContext(), R.color.pref_desc_default_color);
                }
                textView7.setTextColor(color2);
            }
            CheckBox checkBox = (CheckBox) viewCreateView6.findViewById(R.id.check_box);
            checkBox.setOnCheckedChangeListener(null);
            checkBox.setChecked(prefsToggle.on);
            checkBox.setButtonDrawable(isDarkNVTheme() ? R.drawable.switch_bg_dt : R.drawable.switch_bg);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.list.prefs.PrefsAdapter.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    PrefsToggle prefsToggle2 = prefsToggle;
                    prefsToggle2.on = z;
                    Callback<PrefsToggle> callback = prefsToggle2.callback;
                    if (callback != null) {
                        callback.call(prefsToggle2);
                    }
                }
            });
            viewCreateView6.setAlpha(prefsToggle.enabled ? 1.0f : 0.5f);
            return viewCreateView6;
        }
        if (item instanceof PrefsItem) {
            PrefsItem prefsItem = (PrefsItem) item;
            View viewCreateView7 = createView(R.layout.prefs_normal_item, viewGroup, view);
            ((TextView) viewCreateView7.findViewById(R.id.text)).setText(getPrefsText(prefsItem));
            ImageView imageView2 = (ImageView) viewCreateView7.findViewById(R.id.icon);
            imageView2.setVisibility(prefsItem.icon == null ? 8 : 0);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(prefsItem.iconBackgroundColor);
            imageView2.setBackgroundDrawable(shapeDrawable);
            imageView2.setImageDrawable(prefsItem.icon);
            ImageView imageView3 = (ImageView) viewCreateView7.findViewById(R.id.right_icon);
            int i3 = prefsItem.rightIconResId;
            if (i3 != 0) {
                imageView3.setImageResource(i3);
            } else {
                imageView3.setImageDrawable(null);
            }
            imageView3.setVisibility(prefsItem.rightIconResId != 0 ? 0 : 8);
            viewCreateView7.findViewById(R.id.chevron_right).setVisibility(prefsItem.chevronRight ? prefsItem.enabled ? 0 : 4 : 8);
            TextView textView8 = (TextView) viewCreateView7.findViewById(R.id.text2);
            TextView textView9 = (TextView) viewCreateView7.findViewById(R.id.desc);
            textView9.setVisibility(TextUtils.isEmpty(prefsItem.desc) ? 8 : 0);
            textView9.setText(prefsItem.desc);
            if (isDarkNVTheme()) {
                int color3 = prefsItem.descColor;
                if (color3 == 0) {
                    color3 = ContextCompat.getColor(getContext(), R.color.prefs_text_color_dark);
                }
                textView9.setTextColor(color3);
            } else {
                int color4 = prefsItem.descColor;
                if (color4 == 0) {
                    color4 = ContextCompat.getColor(getContext(), R.color.pref_desc_default_color);
                }
                textView9.setTextColor(color4);
            }
            textView9.setEllipsize(prefsItem.descTruncateAt);
            textView8.setTypeface(Typeface.defaultFromStyle(0));
            textView8.setBackgroundColor(getContext().getResources().getColor(android.R.color.transparent));
            if (prefsItem instanceof PrefsSwitch) {
                PrefsSwitch prefsSwitch = (PrefsSwitch) prefsItem;
                textView8.setText(getContext().getString(prefsSwitch.on ? R.string.on : R.string.off));
                textView8.setTextColor(prefsSwitch.on ? getContext().getResources().getColor(R.color.pref_switch_green) : getPrefsTextColor());
                textView8.setTypeface(Typeface.defaultFromStyle(prefsSwitch.on ? 1 : 0));
                textView8.setVisibility(0);
            } else if (prefsItem instanceof PrefsText) {
                PrefsText prefsText = (PrefsText) prefsItem;
                if (prefsText.text2Bold) {
                    textView8.setTypeface(Typeface.defaultFromStyle(1));
                }
                textView8.setText(prefsText.text);
                int prefsTextColor = prefsText.textColor;
                if (prefsTextColor == 0) {
                    prefsTextColor = getPrefsTextColor();
                }
                textView8.setTextColor(prefsTextColor);
                int i4 = prefsText.drawableId;
                if (i4 != 0) {
                    textView8.setBackgroundResource(i4);
                }
                textView8.setVisibility(0);
            } else if (prefsItem instanceof PrefsBadge) {
                PrefsBadge prefsBadge = (PrefsBadge) prefsItem;
                if (prefsBadge.count > 0) {
                    int i5 = prefsBadge.badgeBgResId;
                    if (i5 == 0) {
                        i5 = R.drawable.prefs_badge;
                    }
                    textView8.setBackgroundResource(i5);
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
            viewCreateView7.setAlpha(prefsItem.enabled ? 1.0f : 0.5f);
            return viewCreateView7;
        }
        if (item == DIVIDER) {
            return createView(R.layout.prefs_divider, viewGroup, view);
        }
        return null;
    }

    private int getPrefsTextColor() {
        if (isDarkNVTheme()) {
            return ContextCompat.getColor(this.context.getContext(), R.color.prefs_text_color_dark_70p);
        }
        return -2013265920;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
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
                        startActivity(intent);
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
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        prefsSwitch.on = i2 == 0;
                        PrefsSwitch prefsSwitch2 = prefsSwitch;
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
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }
}
