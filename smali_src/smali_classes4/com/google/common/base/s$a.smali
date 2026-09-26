.class Lcom/google/common/base/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/s;->e(Lcom/google/common/base/d;)Lcom/google/common/base/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lcom/google/common/base/d;


# direct methods
.method constructor <init>(Lcom/google/common/base/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/base/s$a;->val$separatorMatcher:Lcom/google/common/base/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/s$a;->b(Lcom/google/common/base/s;Ljava/lang/CharSequence;)Lcom/google/common/base/s$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lcom/google/common/base/s;Ljava/lang/CharSequence;)Lcom/google/common/base/s$b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/base/s$a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/s$a$a;-><init>(Lcom/google/common/base/s$a;Lcom/google/common/base/s;Ljava/lang/CharSequence;)V

    .line 6
    return-object v0
.end method
