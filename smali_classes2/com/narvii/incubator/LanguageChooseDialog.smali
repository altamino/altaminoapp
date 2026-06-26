.class public Lcom/narvii/incubator/LanguageChooseDialog;
.super Lcom/narvii/app/NVDialog;
.source "LanguageChooseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;,
        Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;,
        Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;,
        Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;
    }
.end annotation


# instance fields
.field private codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/narvii/app/NVContext;

.field private defaultCodes:[Ljava/lang/String;

.field itemClickListener:Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;

.field private languagePicked:Ljava/lang/String;

.field languageSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/language/LanguageSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000cd

    invoke-direct {p0, v0, v1}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "es"

    aput-object v3, v0, v2

    .line 29
    iput-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->defaultCodes:[Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languagePicked:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    .line 49
    iget-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 50
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    const/4 p2, 0x0

    .line 51
    :goto_0
    iget-object p3, p0, Lcom/narvii/incubator/LanguageChooseDialog;->defaultCodes:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    aget-object p3, p3, p2

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const p3, 0x7f1000d5

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 57
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->context:Lcom/narvii/app/NVContext;

    const p1, 0x7f0b019a

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/narvii/incubator/LanguageChooseDialog;->initLanguage()V

    const p1, 0x7f090627

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 63
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 64
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    iget-object p3, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languageSpecs:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/narvii/incubator/LanguageChooseDialog;->filterLanguageSpec(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const p1, 0x7f090628

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 68
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$1;

    invoke-direct {p2, p0}, Lcom/narvii/incubator/LanguageChooseDialog$1;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/incubator/LanguageChooseDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languagePicked:Ljava/lang/String;

    return-object p0
.end method

.method private filterLanguageSpec(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/LanguageSpec;

    .line 82
    iget-object v2, v1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languagePicked:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 83
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initLanguage()V
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->context:Lcom/narvii/app/NVContext;

    const-string v1, "language"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/LanguageManager;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languageSpecs:Ljava/util/List;

    .line 94
    iget-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    new-instance v3, Lcom/narvii/language/LanguageSpec;

    invoke-virtual {v0, v2}, Lcom/narvii/language/LanguageManager;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/narvii/language/LanguageSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languageSpecs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->itemClickListener:Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;

    return-void
.end method
