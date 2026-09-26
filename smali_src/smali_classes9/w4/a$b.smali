.class public final Lw4/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private firebasePerformanceModule:Lx4/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lw4/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw4/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lw4/b;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lw4/a$b;->firebasePerformanceModule:Lx4/a;

    .line 3
    .line 4
    const-class v1, Lx4/a;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ldagger/internal/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    .line 9
    new-instance v0, Lw4/a;

    .line 10
    .line 11
    iget-object v1, p0, Lw4/a$b;->firebasePerformanceModule:Lx4/a;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lw4/a;-><init>(Lx4/a;Lw4/a$a;)V

    .line 16
    return-object v0
.end method

.method public b(Lx4/a;)Lw4/a$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ldagger/internal/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lx4/a;

    .line 7
    .line 8
    iput-object p1, p0, Lw4/a$b;->firebasePerformanceModule:Lx4/a;

    .line 9
    return-object p0
.end method
