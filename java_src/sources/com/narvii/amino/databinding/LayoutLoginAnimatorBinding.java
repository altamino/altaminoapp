package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class LayoutLoginAnimatorBinding implements ViewBinding {

    @NonNull
    public final FlexLayout backgroundLayout;

    @NonNull
    public final ImageView icOrb10;

    @NonNull
    public final ImageView icOrb12;

    @NonNull
    public final ImageView icOrb16;

    @NonNull
    public final ImageView icOrb24;

    @NonNull
    public final ImageView icOrb32;

    @NonNull
    public final ImageView icOrb36;

    @NonNull
    public final ImageView icOrbCore;

    @NonNull
    public final ImageView icOrbCore1;

    @NonNull
    public final ImageView icOrbDash1;

    @NonNull
    public final ImageView icOrbDash2;

    @NonNull
    public final ImageView icOrbDash4;

    @NonNull
    public final ImageView icOrbDotted1;

    @NonNull
    public final ImageView icOrbDotted2;

    @NonNull
    public final ImageView icOrbDotted3;

    @NonNull
    public final ImageView icOrbDotted4;

    @NonNull
    public final ImageView icOrbEllipse1;

    @NonNull
    public final ImageView icOrbEllipse2;

    @NonNull
    public final ImageView icOrbGear1;

    @NonNull
    public final ImageView icOrbGear2;

    @NonNull
    public final ImageView icOrbObject1;

    @NonNull
    public final ImageView icOrbObject2;

    @NonNull
    public final ImageView icOrbObject3;

    @NonNull
    public final ImageView icOrbObject4;

    @NonNull
    public final ImageView icOrbObject5;

    @NonNull
    public final ImageView icOrbObject6;

    @NonNull
    public final ImageView icOrbRing1;

    @NonNull
    public final ImageView icOrbRing2;

    @NonNull
    public final ImageView icOrbRing3;

    @NonNull
    public final RelativeLayout orb10;

    @NonNull
    public final RelativeLayout orb12;

    @NonNull
    public final RelativeLayout orb16;

    @NonNull
    public final RelativeLayout orb24;

    @NonNull
    public final RelativeLayout orb32;

    @NonNull
    public final RelativeLayout orb36;

    @NonNull
    private final FlexLayout rootView;

    private LayoutLoginAnimatorBinding(@NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull ImageView imageView8, @NonNull ImageView imageView9, @NonNull ImageView imageView10, @NonNull ImageView imageView11, @NonNull ImageView imageView12, @NonNull ImageView imageView13, @NonNull ImageView imageView14, @NonNull ImageView imageView15, @NonNull ImageView imageView16, @NonNull ImageView imageView17, @NonNull ImageView imageView18, @NonNull ImageView imageView19, @NonNull ImageView imageView20, @NonNull ImageView imageView21, @NonNull ImageView imageView22, @NonNull ImageView imageView23, @NonNull ImageView imageView24, @NonNull ImageView imageView25, @NonNull ImageView imageView26, @NonNull ImageView imageView27, @NonNull ImageView imageView28, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull RelativeLayout relativeLayout6) {
        this.rootView = flexLayout;
        this.backgroundLayout = flexLayout2;
        this.icOrb10 = imageView;
        this.icOrb12 = imageView2;
        this.icOrb16 = imageView3;
        this.icOrb24 = imageView4;
        this.icOrb32 = imageView5;
        this.icOrb36 = imageView6;
        this.icOrbCore = imageView7;
        this.icOrbCore1 = imageView8;
        this.icOrbDash1 = imageView9;
        this.icOrbDash2 = imageView10;
        this.icOrbDash4 = imageView11;
        this.icOrbDotted1 = imageView12;
        this.icOrbDotted2 = imageView13;
        this.icOrbDotted3 = imageView14;
        this.icOrbDotted4 = imageView15;
        this.icOrbEllipse1 = imageView16;
        this.icOrbEllipse2 = imageView17;
        this.icOrbGear1 = imageView18;
        this.icOrbGear2 = imageView19;
        this.icOrbObject1 = imageView20;
        this.icOrbObject2 = imageView21;
        this.icOrbObject3 = imageView22;
        this.icOrbObject4 = imageView23;
        this.icOrbObject5 = imageView24;
        this.icOrbObject6 = imageView25;
        this.icOrbRing1 = imageView26;
        this.icOrbRing2 = imageView27;
        this.icOrbRing3 = imageView28;
        this.orb10 = relativeLayout;
        this.orb12 = relativeLayout2;
        this.orb16 = relativeLayout3;
        this.orb24 = relativeLayout4;
        this.orb32 = relativeLayout5;
        this.orb36 = relativeLayout6;
    }

    @NonNull
    public static LayoutLoginAnimatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutLoginAnimatorBinding bind(@NonNull View view) {
        FlexLayout flexLayout = (FlexLayout) view;
        int i10 = R.id.ic_orb_10;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.ic_orb_10);
        if (imageView != null) {
            i10 = R.id.ic_orb_12;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.ic_orb_12);
            if (imageView2 != null) {
                i10 = R.id.ic_orb_16;
                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.ic_orb_16);
                if (imageView3 != null) {
                    i10 = R.id.ic_orb_24;
                    ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.ic_orb_24);
                    if (imageView4 != null) {
                        i10 = R.id.ic_orb_32;
                        ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.ic_orb_32);
                        if (imageView5 != null) {
                            i10 = R.id.ic_orb_36;
                            ImageView imageView6 = (ImageView) ViewBindings.a(view, R.id.ic_orb_36);
                            if (imageView6 != null) {
                                i10 = R.id.ic_orb_core;
                                ImageView imageView7 = (ImageView) ViewBindings.a(view, R.id.ic_orb_core);
                                if (imageView7 != null) {
                                    i10 = R.id.ic_orb_core_1;
                                    ImageView imageView8 = (ImageView) ViewBindings.a(view, R.id.ic_orb_core_1);
                                    if (imageView8 != null) {
                                        i10 = R.id.ic_orb_dash_1;
                                        ImageView imageView9 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dash_1);
                                        if (imageView9 != null) {
                                            i10 = R.id.ic_orb_dash_2;
                                            ImageView imageView10 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dash_2);
                                            if (imageView10 != null) {
                                                i10 = R.id.ic_orb_dash_4;
                                                ImageView imageView11 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dash_4);
                                                if (imageView11 != null) {
                                                    i10 = R.id.ic_orb_dotted_1;
                                                    ImageView imageView12 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dotted_1);
                                                    if (imageView12 != null) {
                                                        i10 = R.id.ic_orb_dotted_2;
                                                        ImageView imageView13 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dotted_2);
                                                        if (imageView13 != null) {
                                                            i10 = R.id.ic_orb_dotted_3;
                                                            ImageView imageView14 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dotted_3);
                                                            if (imageView14 != null) {
                                                                i10 = R.id.ic_orb_dotted_4;
                                                                ImageView imageView15 = (ImageView) ViewBindings.a(view, R.id.ic_orb_dotted_4);
                                                                if (imageView15 != null) {
                                                                    i10 = R.id.ic_orb_ellipse_1;
                                                                    ImageView imageView16 = (ImageView) ViewBindings.a(view, R.id.ic_orb_ellipse_1);
                                                                    if (imageView16 != null) {
                                                                        i10 = R.id.ic_orb_ellipse_2;
                                                                        ImageView imageView17 = (ImageView) ViewBindings.a(view, R.id.ic_orb_ellipse_2);
                                                                        if (imageView17 != null) {
                                                                            i10 = R.id.ic_orb_gear_1;
                                                                            ImageView imageView18 = (ImageView) ViewBindings.a(view, R.id.ic_orb_gear_1);
                                                                            if (imageView18 != null) {
                                                                                i10 = R.id.ic_orb_gear_2;
                                                                                ImageView imageView19 = (ImageView) ViewBindings.a(view, R.id.ic_orb_gear_2);
                                                                                if (imageView19 != null) {
                                                                                    i10 = R.id.ic_orb_object_1;
                                                                                    ImageView imageView20 = (ImageView) ViewBindings.a(view, R.id.ic_orb_object_1);
                                                                                    if (imageView20 != null) {
                                                                                        i10 = R.id.ic_orb_object_2;
                                                                                        ImageView imageView21 = (ImageView) ViewBindings.a(view, R.id.ic_orb_object_2);
                                                                                        if (imageView21 != null) {
                                                                                            i10 = R.id.ic_orb_object_3;
                                                                                            ImageView imageView22 = (ImageView) ViewBindings.a(view, R.id.ic_orb_object_3);
                                                                                            if (imageView22 != null) {
                                                                                                i10 = R.id.ic_orb_object_4;
                                                                                                ImageView imageView23 = (ImageView) ViewBindings.a(view, R.id.ic_orb_object_4);
                                                                                                if (imageView23 != null) {
                                                                                                    i10 = R.id.ic_orb_object_5;
                                                                                                    ImageView imageView24 = (ImageView) ViewBindings.a(view, R.id.ic_orb_object_5);
                                                                                                    if (imageView24 != null) {
                                                                                                        i10 = R.id.ic_orb_object_6;
                                                                                                        ImageView imageView25 = (ImageView) ViewBindings.a(view, R.id.ic_orb_object_6);
                                                                                                        if (imageView25 != null) {
                                                                                                            i10 = R.id.ic_orb_ring_1;
                                                                                                            ImageView imageView26 = (ImageView) ViewBindings.a(view, R.id.ic_orb_ring_1);
                                                                                                            if (imageView26 != null) {
                                                                                                                i10 = R.id.ic_orb_ring_2;
                                                                                                                ImageView imageView27 = (ImageView) ViewBindings.a(view, R.id.ic_orb_ring_2);
                                                                                                                if (imageView27 != null) {
                                                                                                                    i10 = R.id.ic_orb_ring_3;
                                                                                                                    ImageView imageView28 = (ImageView) ViewBindings.a(view, R.id.ic_orb_ring_3);
                                                                                                                    if (imageView28 != null) {
                                                                                                                        i10 = R.id.orb_10;
                                                                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.orb_10);
                                                                                                                        if (relativeLayout != null) {
                                                                                                                            i10 = R.id.orb_12;
                                                                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.orb_12);
                                                                                                                            if (relativeLayout2 != null) {
                                                                                                                                i10 = R.id.orb_16;
                                                                                                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.a(view, R.id.orb_16);
                                                                                                                                if (relativeLayout3 != null) {
                                                                                                                                    i10 = R.id.orb_24;
                                                                                                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.a(view, R.id.orb_24);
                                                                                                                                    if (relativeLayout4 != null) {
                                                                                                                                        i10 = R.id.orb_32;
                                                                                                                                        RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.a(view, R.id.orb_32);
                                                                                                                                        if (relativeLayout5 != null) {
                                                                                                                                            i10 = R.id.orb_36;
                                                                                                                                            RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.a(view, R.id.orb_36);
                                                                                                                                            if (relativeLayout6 != null) {
                                                                                                                                                return new LayoutLoginAnimatorBinding(flexLayout, flexLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, imageView13, imageView14, imageView15, imageView16, imageView17, imageView18, imageView19, imageView20, imageView21, imageView22, imageView23, imageView24, imageView25, imageView26, imageView27, imageView28, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static LayoutLoginAnimatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_animator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
