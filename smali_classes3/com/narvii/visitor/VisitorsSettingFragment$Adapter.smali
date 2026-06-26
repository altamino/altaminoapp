.class final Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "VisitorsSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/VisitorsSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisitorsSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisitorsSettingFragment.kt\ncom/narvii/visitor/VisitorsSettingFragment$Adapter\n*L\n1#1,299:1\n*E\n"
.end annotation


# instance fields
.field private final TEXT:Lcom/narvii/util/Tag;

.field private final switchCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsToggle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 88
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "text"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->TEXT:Lcom/narvii/util/Tag;

    .line 108
    new-instance p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$switchCallback$1;

    invoke-direct {p1, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$switchCallback$1;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;)V

    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->switchCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public static final synthetic access$sendPrivacyRequest(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->sendPrivacyRequest(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final sendPrivacyRequest(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 163
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;

    invoke-direct {v1, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 181
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    .line 170
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "account/visit-settings"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 173
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "privacyMode"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "notificationStatus"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 173
    :cond_1
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$setPrivacyRequest$p(Lcom/narvii/visitor/VisitorsSettingFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 182
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getApi$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyRequest$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v2, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;

    const-class v3, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 94
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    const v1, 0x7f0f0e2d

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->TEXT:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    const v2, 0x7f0f0cc4

    invoke-direct {v0, v2}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const v3, 0x7f0f0c1d

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v2}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getNotificationStatus$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 101
    iget-object v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const v2, 0x7f0f0c1e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->switchCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 103
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x88ffffffL

    goto :goto_1

    :cond_1
    const-wide v1, 0xff4a4a4aL

    :goto_1
    long-to-int v2, v1

    iput v2, v0, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getLoadSuccess$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSwitchCallback()Lcom/narvii/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsToggle;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->switchCallback:Lcom/narvii/util/Callback;

    return-object v0
.end method

.method public final getTEXT()Lcom/narvii/util/Tag;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->TEXT:Lcom/narvii/util/Tag;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    instance-of v1, v0, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout"

    const v3, 0x7f090b5b

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    const p1, 0x7f0b0612

    .line 121
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/FrameLayout;

    .line 122
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f09020f

    .line 123
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    .line 125
    move-object v1, v0

    check-cast v1, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;

    invoke-virtual {v1}, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v5, "check"

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto :goto_2

    :cond_0
    const v1, 0x7f0f0e27

    .line 131
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p2}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result p2

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const v1, 0x7f0f0e31

    .line 127
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p2}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result p2

    if-ne p2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_2
    new-instance p2, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;

    invoke-direct {p2, p0, v0}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 121
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_5
    iget-object v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->TEXT:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f0b0611

    .line 144
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Landroid/widget/FrameLayout;

    .line 145
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "text"

    .line 146
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p3}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result p3

    if-ne p3, v4, :cond_6

    iget-object p3, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const v0, 0x7f0f0e32

    goto :goto_3

    :cond_6
    iget-object p3, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const v0, 0x7f0f0e28

    :goto_3
    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 144
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "super.getView(position, convertView, parent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->TEXT:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
