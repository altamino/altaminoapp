.class public final Lk2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lk2/g;->clockProvider:Lv7/a;

    .line 6
    return-void
.end method

.method public static a(Lm2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lk2/f;->a(Lm2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/google/android/datatransport/runtime/dagger/internal/e;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 13
    return-object p0
.end method

.method public static b(Lv7/a;)Lk2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Lm2/a;",
            ">;)",
            "Lk2/g;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lk2/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lk2/g;-><init>(Lv7/a;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lk2/g;->clockProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lm2/a;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lk2/g;->a(Lm2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lk2/g;->c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
