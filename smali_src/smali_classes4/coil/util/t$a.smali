.class final synthetic Lcoil/util/t$a;
.super Lkotlin/jvm/internal/q;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/q;",
        "Le8/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/util/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/util/t$a;

    invoke-direct {v0}, Lcoil/util/t$a;-><init>()V

    sput-object v0, Lcoil/util/t$a;->INSTANCE:Lcoil/util/t$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-class v2, Ljava/lang/System;

    const-string v3, "currentTimeMillis"

    const-string v4, "currentTimeMillis()J"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/q;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/util/t$a;->c()Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
