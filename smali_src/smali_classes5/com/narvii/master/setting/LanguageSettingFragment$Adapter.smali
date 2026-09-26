.class Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/master/setting/LanguageSettingFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/narvii/language/LanguageSpec;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 39
    .line 40
    iput-object v1, v2, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    .line 41
    .line 42
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    check-cast v2, Lcom/narvii/language/LanguageSpec;

    .line 62
    .line 63
    iget-object v3, v2, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    iget-object v5, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object v4, v0

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    return-object v1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Lcom/narvii/language/LanguageSpec;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/LanguageSpec;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->getItem(I)Lcom/narvii/language/LanguageSpec;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d04a7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0a0e51

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->name:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const p3, 0x7f0a0828

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    move v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v1

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->localizedName:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const p3, 0x7f0a02c7

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    check-cast p3, Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v0, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    move v1, v2

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    new-instance p3, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;

    .line 80
    .line 81
    .line 82
    invoke-direct {p3, p0, p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;-><init>(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Lcom/narvii/language/LanguageSpec;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object p2
.end method

.method public isListShown()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->sendRequest()V

    .line 7
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

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->sendRequest()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method

.method sendRequest()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "community-collection/supported-languages"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "api"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;

    .line 30
    .line 31
    const-class v3, Lcom/narvii/master/explorer/SupportLanguageResponse;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;-><init>(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 38
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
