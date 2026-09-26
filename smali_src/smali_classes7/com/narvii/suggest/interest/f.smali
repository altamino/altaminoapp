.class public final synthetic Lcom/narvii/suggest/interest/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/suggest/interest/f;->a:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/suggest/interest/f;->a:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->x(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;Ljava/lang/String;)V

    return-void
.end method
