.class Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "LanguageSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/setting/LanguageSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/language/LanguageSpec;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/setting/LanguageSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/setting/LanguageSettingFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 102
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->filterLanguageSpec(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private filterLanguageSpec(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/language/LanguageSpec;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/language/LanguageSpec;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    iget-object v1, v1, Lcom/narvii/master/setting/LanguageSettingFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/language/LanguageSpec;

    .line 181
    iget-object v3, v3, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    iget-object v2, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    iput-object v1, v2, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    .line 187
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/language/LanguageSpec;

    .line 189
    iget-object v3, v2, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    iget-object v4, v4, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 190
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/language/LanguageSpec;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/LanguageSpec;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->getItem(I)Lcom/narvii/language/LanguageSpec;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->getItem(I)Lcom/narvii/language/LanguageSpec;

    move-result-object p1

    const v0, 0x7f0b0478

    .line 156
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b5b

    .line 157
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 158
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09069d

    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 160
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09020f

    .line 162
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 163
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    iget-object v3, v3, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    new-instance p3, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;-><init>(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Lcom/narvii/language/LanguageSpec;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 109
    invoke-virtual {p0}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    .line 130
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->sendRequest()V

    .line 132
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method sendRequest()V
    .locals 4

    .line 199
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "community-collection/supported-languages"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 202
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 203
    new-instance v2, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;

    const-class v3, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;-><init>(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
