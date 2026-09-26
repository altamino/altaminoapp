.class public Lcom/narvii/incubator/LanguageChooseDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;,
        Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;,
        Lcom/narvii/incubator/LanguageChooseDialog$FootViewHolder;,
        Lcom/narvii/incubator/LanguageChooseDialog$LanguageViewHolder;
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
    .locals 2
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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f13015c

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    const-string v0, "en"

    .line 13
    .line 14
    const-string v1, "es"

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->defaultCodes:[Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languagePicked:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    .line 25
    const/4 p3, 0x0

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 31
    move-result p2

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    .line 41
    move p2, p3

    .line 42
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->defaultCodes:[Ljava/lang/String;

    .line 44
    array-length v1, v0

    .line 45
    .line 46
    if-ge p2, v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    .line 49
    .line 50
    aget-object v0, v0, p2

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    const v0, 0x7f130164

    .line 68
    .line 69
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->context:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0d01ba

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/incubator/LanguageChooseDialog;->initLanguage()V

    .line 81
    .line 82
    .line 83
    const p1, 0x7f0a07a9

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x1

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v0, v1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;

    .line 105
    .line 106
    iget-object p3, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languageSpecs:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p3}, Lcom/narvii/incubator/LanguageChooseDialog;->filterLanguageSpec(Ljava/util/List;)Ljava/util/List;

    .line 110
    move-result-object p3

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, p0, p3}, Lcom/narvii/incubator/LanguageChooseDialog$MyRecycleAdapter;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    .line 118
    .line 119
    const p1, 0x7f0a07aa

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Landroid/widget/Button;

    .line 126
    .line 127
    new-instance p2, Lcom/narvii/incubator/LanguageChooseDialog$1;

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, p0}, Lcom/narvii/incubator/LanguageChooseDialog$1;-><init>(Lcom/narvii/incubator/LanguageChooseDialog;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/incubator/LanguageChooseDialog;)Ljava/lang/String;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/language/LanguageSpec;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    iget-object v4, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languagePicked:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method

.method private initLanguage()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/incubator/LanguageChooseDialog;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "language"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/language/LanguageManager;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languageSpecs:Ljava/util/List;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->codes:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Lcom/narvii/language/LanguageSpec;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/narvii/language/LanguageManager;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4, v5, v2}, Lcom/narvii/language/LanguageSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/incubator/LanguageChooseDialog;->languageSpecs:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog;->itemClickListener:Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;

    return-void
.end method
