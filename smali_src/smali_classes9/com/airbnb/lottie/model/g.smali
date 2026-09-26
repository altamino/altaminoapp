.class public Lcom/airbnb/lottie/model/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/g$a;
    }
.end annotation


# instance fields
.field private final character:C

.field private final fontFamily:Ljava/lang/String;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/n;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field private final style:Ljava/lang/String;

.field private final width:D


# direct methods
.method constructor <init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/n;",
            ">;CID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/g;->shapes:Ljava/util/List;

    .line 6
    .line 7
    iput-char p2, p0, Lcom/airbnb/lottie/model/g;->character:C

    .line 8
    .line 9
    iput p3, p0, Lcom/airbnb/lottie/model/g;->size:I

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/airbnb/lottie/model/g;->width:D

    .line 12
    .line 13
    iput-object p6, p0, Lcom/airbnb/lottie/model/g;->style:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p7, p0, Lcom/airbnb/lottie/model/g;->fontFamily:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static c(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result p1

    .line 7
    add-int/2addr p0, p1

    .line 8
    .line 9
    mul-int/lit8 p0, p0, 0x1f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result p1

    .line 14
    add-int/2addr p0, p1

    .line 15
    return p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/g;->shapes:Ljava/util/List;

    return-object v0
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/airbnb/lottie/model/g;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lcom/airbnb/lottie/model/g;->character:C

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/model/g;->fontFamily:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/airbnb/lottie/model/g;->style:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/model/g;->c(CLjava/lang/String;Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method
