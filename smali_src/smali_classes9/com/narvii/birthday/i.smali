.class public final synthetic Lcom/narvii/birthday/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic a:Lcom/narvii/birthday/EnterBirthdayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/birthday/i;->a:Lcom/narvii/birthday/EnterBirthdayFragment;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/birthday/i;->a:Lcom/narvii/birthday/EnterBirthdayFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/narvii/birthday/EnterBirthdayFragment;->n(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method
