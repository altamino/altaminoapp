.class final Lcom/bytedance/tea/common/utility/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/common/utility/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/tea/common/utility/a/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/common/utility/a/a$a;Lcom/bytedance/tea/common/utility/a/a$a;)I
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_1
    iget-object p1, p1, Lcom/bytedance/tea/common/utility/a/a$a;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/bytedance/tea/common/utility/a/a$a;->a:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/bytedance/tea/common/utility/a/a$a;

    .line 3
    .line 4
    check-cast p2, Lcom/bytedance/tea/common/utility/a/a$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/tea/common/utility/a/a$1;->a(Lcom/bytedance/tea/common/utility/a/a$a;Lcom/bytedance/tea/common/utility/a/a$a;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
