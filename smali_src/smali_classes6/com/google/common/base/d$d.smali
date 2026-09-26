.class final Lcom/google/common/base/d$d;
.super Lcom/google/common/base/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/base/d$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/base/d$d;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/common/base/d$d;->INSTANCE:Lcom/google/common/base/d$d;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "CharMatcher.none()"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/common/base/d$c;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/google/common/base/o;->m(II)I

    .line 8
    const/4 p1, -0x1

    .line 9
    return p1
.end method

.method public e(C)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
