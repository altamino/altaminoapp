.class public final Lg2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lg2/k;",
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

.field private final creationContextFactoryProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lg2/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lg2/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lg2/l;->applicationContextProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lg2/l;->creationContextFactoryProvider:Lv7/a;

    .line 8
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;)Lg2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lg2/i;",
            ">;)",
            "Lg2/l;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lg2/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lg2/l;-><init>(Lv7/a;Lv7/a;)V

    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lg2/k;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lg2/k;

    .line 3
    .line 4
    check-cast p1, Lg2/i;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lg2/k;-><init>(Landroid/content/Context;Lg2/i;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public b()Lg2/k;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lg2/l;->applicationContextProvider:Lv7/a;

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
    iget-object v1, p0, Lg2/l;->creationContextFactoryProvider:Lv7/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lv7/a;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lg2/l;->c(Landroid/content/Context;Ljava/lang/Object;)Lg2/k;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lg2/l;->b()Lg2/k;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
