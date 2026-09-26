.class final Lm2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final INSTANCE:Lm2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lm2/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lm2/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lm2/c$a;->INSTANCE:Lm2/c;

    .line 8
    return-void
.end method

.method static synthetic a()Lm2/c;
    .locals 1

    .line 1
    sget-object v0, Lm2/c$a;->INSTANCE:Lm2/c;

    return-object v0
.end method
