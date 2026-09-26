package com.narvii.modulization.template;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.transition.TransitionLayout;
import com.narvii.transition.TransitionManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.webview.AssetsLocalizationManager;
import com.narvii.widget.GradientView;
import com.narvii.widget.StatusBarPlaceHolder;
import com.narvii.widget.ULTextview;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TemplatePickerFragment extends NVListFragment implements View.OnClickListener {
    SparseArray<Boolean> expandMap = new SparseArray<>();
    public View footerView;
    private List<Integer> matchParentIds;
    public PackageUtils packageUtils;
    List<AminoTemplate> templateList;
    private List<Integer> transitionIds;

    class TemplateAdapter extends NVArrayAdapter<AminoTemplate> {
        public TemplateAdapter(NVContext nVContext, Class<AminoTemplate> cls, List<AminoTemplate> list) {
            super(nVContext, cls, list);
        }

        private void setUpCollapseLayout(AminoTemplate aminoTemplate, View view) {
            ((ImageView) view.findViewById(R.id.icon)).setImageDrawable(aminoTemplate.getIconDrawable(getContext()));
            ((TextView) view.findViewById(R.id.title)).setText(aminoTemplate.title);
            ((TextView) view.findViewById(R.id.subTitle)).setText(aminoTemplate.subtitle);
        }

        private void setUpExpandLayout(AminoTemplate aminoTemplate, View view) {
            ((ImageView) view.findViewById(R.id.icon)).setImageDrawable(aminoTemplate.getIconDrawable(getContext()));
            ((TextView) view.findViewById(R.id.title)).setText(aminoTemplate.title);
            ((TextView) view.findViewById(R.id.subTitle)).setText(aminoTemplate.subtitle);
            ((TextView) view.findViewById(R.id.desc)).setText(aminoTemplate.description);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.features_layout);
            linearLayout.removeAllViews();
            ArrayList<String> arrayList = aminoTemplate.features;
            if (arrayList != null) {
                for (String str : arrayList) {
                    ULTextview uLTextview = (ULTextview) LayoutInflater.from(getContext()).inflate(R.layout.amino_template_feature_ul, (ViewGroup) linearLayout, false);
                    uLTextview.setText(str);
                    linearLayout.addView(uLTextview);
                }
            }
            TextView textView = (TextView) view.findViewById(R.id.create_text);
            if (textView != null) {
                ViewUtils.setMontserratExtraBoldTypeface(textView);
            }
            View viewFindViewById = view.findViewById(R.id.create_push_button);
            viewFindViewById.setTag(Integer.valueOf(aminoTemplate.id));
            viewFindViewById.setOnClickListener(TemplatePickerFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, final View view, View view2) {
            if (obj instanceof AminoTemplate) {
                AminoTemplate aminoTemplate = (AminoTemplate) obj;
                Boolean bool = TemplatePickerFragment.this.expandMap.get(aminoTemplate.id);
                View viewFindViewById = view.findViewById(R.id.collapse);
                View viewFindViewById2 = view.findViewById(R.id.expand);
                setUpExpandLayout(aminoTemplate, viewFindViewById2);
                TransitionLayout transitionLayout = (TransitionLayout) view.findViewById(R.id.container);
                TransitionManager transitionManager = new TransitionManager();
                transitionManager.setMatchParentIds(TemplatePickerFragment.this.matchParentIds);
                transitionManager.setTransitionTargetIds(TemplatePickerFragment.this.transitionIds);
                transitionLayout.setTransitionManager(transitionManager);
                int[] iArr = new int[2];
                view.getLocationInWindow(iArr);
                final int i11 = iArr[1];
                transitionLayout.setTransitionListener(new TransitionLayout.TransitionListener() { // from class: com.narvii.modulization.template.TemplatePickerFragment.TemplateAdapter.1
                    float lastProgress;

                    @Override // com.narvii.transition.TransitionLayout.TransitionListener
                    public void onTransitionProgress(int i12, int i13, float f) {
                        ListView listView;
                        if (i13 > i12 && (listView = TemplatePickerFragment.this.getListView()) != null) {
                            ViewGroup.LayoutParams layoutParams = TemplatePickerFragment.this.footerView.getLayoutParams();
                            layoutParams.height = (int) Utils.dpToPx(TemplateAdapter.this.getContext(), 1000.0f);
                            TemplatePickerFragment.this.footerView.setLayoutParams(layoutParams);
                            int[] iArr2 = new int[2];
                            listView.getLocationInWindow(iArr2);
                            listView.smoothScrollBy((int) ((f - this.lastProgress) * Math.max(0, i11 - (((iArr2[1] + listView.getHeight()) - TemplatePickerFragment.this.getFooterHeight()) - i13))), 0);
                            if (f == 1.0f) {
                                ViewGroup.LayoutParams layoutParams2 = TemplatePickerFragment.this.footerView.getLayoutParams();
                                layoutParams2.height = TemplatePickerFragment.this.getFooterHeight();
                                TemplatePickerFragment.this.footerView.setLayoutParams(layoutParams2);
                            }
                            this.lastProgress = f;
                        }
                        int i14 = Utils.isRtl() ? -90 : 90;
                        view.findViewById(R.id.chevron).setRotation(i13 > i12 ? f * i14 : i14 * (1.0f - f));
                    }
                });
                if (bool == null) {
                    TemplatePickerFragment.this.expandMap.put(aminoTemplate.id, Boolean.TRUE);
                    viewFindViewById.setVisibility(8);
                    viewFindViewById2.setVisibility(0);
                    transitionLayout.transition(view, viewFindViewById, viewFindViewById2);
                } else {
                    TemplatePickerFragment.this.expandMap.remove(aminoTemplate.id);
                    viewFindViewById2.setVisibility(8);
                    viewFindViewById.setVisibility(0);
                    transitionLayout.transition(view, viewFindViewById2, viewFindViewById);
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            AminoTemplate item = getItem(i10);
            View viewCreateView = createView(R.layout.amino_template_picker_item, viewGroup, view);
            Drawable backgroundDrawable = item.getBackgroundDrawable(getContext());
            int i11 = R.id.container;
            viewCreateView.findViewById(i11).setBackgroundDrawable(backgroundDrawable);
            GradientView gradientView = (GradientView) viewCreateView.findViewById(R.id.gradient);
            gradientView.setRadius(TemplatePickerFragment.this.getResources().getDimensionPixelSize(R.dimen.template_picker_radius));
            gradientView.setColor(Utils.getColor(-1, 0.25f), Utils.getColor(ViewCompat.MEASURED_STATE_MASK, 0.2f));
            View viewFindViewById = viewCreateView.findViewById(R.id.collapse);
            Boolean bool = TemplatePickerFragment.this.expandMap.get(item.id);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.expand);
            if (bool == null) {
                viewFindViewById.setVisibility(0);
                viewFindViewById2.setVisibility(8);
            } else {
                viewFindViewById.setVisibility(8);
                viewFindViewById2.setVisibility(0);
            }
            setUpCollapseLayout(item, viewFindViewById);
            setUpExpandLayout(item, viewFindViewById2);
            ((TransitionLayout) viewCreateView.findViewById(i11)).setTransitionManager(null);
            return viewCreateView;
        }
    }

    class TopAdapter extends AdriftAdapter {
        public TopAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.amino_template_picker_list_top, viewGroup, view);
        }
    }

    protected boolean isActionBarTransparent() {
        return false;
    }

    public void onClick(View view) {
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (getStatusBarOverlaySize() != 0) {
            StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
            View[] viewArr = new View[1];
            viewArr[0] = isActionBarTransparent() ? new OverlayListPlaceholder(getContext()) : new StatusBarPlaceHolder(getContext());
            staticViewAdapter.addViews(viewArr);
            mergeAdapter.addAdapter(staticViewAdapter);
        }
        mergeAdapter.addAdapter(new TopAdapter(this));
        mergeAdapter.addAdapter(new TemplateAdapter(this, AminoTemplate.class, this.templateList));
        StaticViewAdapter staticViewAdapter2 = new StaticViewAdapter();
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.adapter_layout_placeholder, (ViewGroup) getListView(), false);
        this.footerView = viewInflate;
        ViewGroup.LayoutParams layoutParams = viewInflate.getLayoutParams();
        layoutParams.height = getFooterHeight();
        this.footerView.setLayoutParams(layoutParams);
        staticViewAdapter2.addViews(this.footerView);
        mergeAdapter.addAdapter(staticViewAdapter2);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        ArrayList arrayList = new ArrayList();
        this.transitionIds = arrayList;
        arrayList.add(Integer.valueOf(R.id.icon));
        this.transitionIds.add(Integer.valueOf(R.id.title));
        this.transitionIds.add(Integer.valueOf(R.id.subTitle));
        ArrayList arrayList2 = new ArrayList();
        this.matchParentIds = arrayList2;
        arrayList2.add(Integer.valueOf(R.id.gradient));
        super.onCreate(bundle);
        InputStream localAssetFileInputStream = new AssetsLocalizationManager(this, "ndc_template").getLocalAssetFileInputStream(AssetsLocalizationManager.FILE_JSON);
        try {
            try {
                ObjectMapper objectMapper = JacksonUtils.DEFAULT_MAPPER;
                this.templateList = (List) objectMapper.readValue(localAssetFileInputStream, objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, AminoTemplate.class));
            } catch (IOException e) {
                e.printStackTrace();
            }
        } finally {
            Utils.safeClose(localAssetFileInputStream);
        }
    }

    protected int getFooterHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.template_picker_padding_h);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }
}
