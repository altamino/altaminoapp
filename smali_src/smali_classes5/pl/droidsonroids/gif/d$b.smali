.class final Lpl/droidsonroids/gif/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final INSTANCE:Lpl/droidsonroids/gif/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lpl/droidsonroids/gif/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lpl/droidsonroids/gif/d;-><init>(Lpl/droidsonroids/gif/d$a;)V

    .line 7
    .line 8
    sput-object v0, Lpl/droidsonroids/gif/d$b;->INSTANCE:Lpl/droidsonroids/gif/d;

    .line 9
    return-void
.end method

.method static synthetic a()Lpl/droidsonroids/gif/d;
    .locals 1

    .line 1
    sget-object v0, Lpl/droidsonroids/gif/d$b;->INSTANCE:Lpl/droidsonroids/gif/d;

    return-object v0
.end method
