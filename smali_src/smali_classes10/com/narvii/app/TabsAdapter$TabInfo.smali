.class final Lcom/narvii/app/TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/TabsAdapter$TabInfo;->tag:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/app/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/app/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/app/TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/app/TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object p0
.end method
