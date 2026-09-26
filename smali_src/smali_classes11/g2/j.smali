.class public final Lg2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lg2/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationContextProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final monotonicClockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final wallClockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
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
    iput-object p1, p0, Lg2/j;->applicationContextProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lg2/j;->wallClockProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lg2/j;->monotonicClockProvider:Lv7/a;

    .line 10
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;)Lg2/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;)",
            "Lg2/j;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lg2/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lg2/j;-><init>(Lv7/a;Lv7/a;Lv7/a;)V

    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lm2/a;Lm2/a;)Lg2/i;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lg2/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lg2/i;-><init>(Landroid/content/Context;Lm2/a;Lm2/a;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lg2/i;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lg2/j;->applicationContextProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lg2/j;->wallClockProvider:Lv7/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lv7/a;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lm2/a;

    .line 17
    .line 18
    iget-object v2, p0, Lg2/j;->monotonicClockProvider:Lv7/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Lv7/a;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lm2/a;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lg2/j;->c(Landroid/content/Context;Lm2/a;Lm2/a;)Lg2/i;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lg2/j;->b()Lg2/i;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
