import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import java.util.Map;
import static junit.framework.Assert.assertEquals;

@ExtendWith(MockitoExtension.class)
class AnswersTest {
@Mock
    Map<Integer, String> mockmap;

    @Test
 public void getAnswer() {

        Mockito.doReturn("Go home").when(mockmap).get(1);
        assertEquals("Go home", mockmap.get(1));
}
}