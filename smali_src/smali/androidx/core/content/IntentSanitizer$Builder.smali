.class public final Landroidx/core/content/IntentSanitizer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final HISTORY_STACK_FLAGS:I = 0x7debf000

.field private static final RECEIVER_FLAGS:I = 0x78200000


# instance fields
.field private mAllowAnyComponent:Z

.field private mAllowClipDataText:Z

.field private mAllowIdentifier:Z

.field private mAllowSelector:Z

.field private mAllowSomeComponents:Z

.field private mAllowSourceBounds:Z

.field private mAllowedActions:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategories:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipDataUri:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedComponents:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowedFlags:I

.field private mAllowedPackages:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/core/content/b;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/core/content/b;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    new-instance v0, Landroidx/core/content/c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/core/content/c;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Landroidx/core/util/Predicate;

    .line 18
    .line 19
    new-instance v0, Landroidx/core/content/d;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/core/content/d;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Landroidx/core/util/Predicate;

    .line 25
    .line 26
    new-instance v0, Landroidx/core/content/e;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/core/content/e;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Landroidx/core/util/Predicate;

    .line 32
    .line 33
    new-instance v0, Landroidx/core/content/f;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/core/content/f;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Landroidx/core/util/Predicate;

    .line 39
    .line 40
    new-instance v0, Landroidx/core/content/g;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Landroidx/core/content/g;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Landroidx/core/util/Predicate;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    .line 53
    const/4 v0, 0x0

    .line 54
    .line 55
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 56
    .line 57
    new-instance v0, Landroidx/core/content/h;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Landroidx/core/content/h;-><init>()V

    .line 61
    .line 62
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    .line 63
    .line 64
    new-instance v0, Landroidx/core/content/i;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Landroidx/core/content/i;-><init>()V

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Landroidx/core/util/Predicate;

    .line 70
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->o(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->j(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->n(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/content/ClipData;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->p(Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method private static synthetic i(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic j(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic k(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic l(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic m(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic n(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic o(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic p(Landroid/content/ClipData;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method
