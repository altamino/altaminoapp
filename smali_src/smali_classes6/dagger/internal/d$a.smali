.class Ldagger/internal/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/d;->a(Lv7/a;)Ldagger/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$provider:Lv7/a;


# direct methods
.method constructor <init>(Lv7/a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Ldagger/internal/d$a;->val$provider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ldagger/internal/d$a;->val$provider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
